import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/data/model/front_detection_model.dart';
import 'package:virpa/data/model/growth_model.dart';
import 'package:virpa/data/model/head_detection_model.dart';
import 'package:virpa/data/model/side_detection_model.dart';
import 'package:virpa/data/model/user_model.dart';
import 'package:virpa/screens/camera_page/camera_page.dart';
import 'package:virpa/screens/home_page/home_page.dart';
import 'package:virpa/services/deteksi_service.dart';
import 'package:virpa/services/firebase_storage_service.dart';
import 'package:virpa/services/growth_service.dart';
import 'package:virpa/services/height_status_getter_service.dart';
import 'package:virpa/services/user_service.dart';
import 'package:virpa/services/weight_status_getter_service.dart';
import 'package:virpa/utils/image_processor.dart';
import 'package:virpa/utils/utils.dart';

class DeteksiPageController extends GetxController {
  final firestorageService = Get.find<FirebaseStorageService>();
  final deteksiService = Get.find<DeteksiService>();
  final userService = Get.find<UserService>();
  final growthService = Get.find<GrowthService>();
  late HeadDetectionModel hasilDeteksiKepala;
  late FrontDetectionModel hasilDeteksiDepan;
  late SideDetectionModel hasilDeteksiSamping;
  late Map<String, dynamic> processedData;
  UserModel? user;
  String? headImageUrl;
  String? frontImageUrl;
  String? sideImageUrl;
  Rx<int> index = 0.obs;

  @override
  void onInit() async {
    user = await userService.getUser(auth.currentUser!.uid);
    super.onInit();
  }

  void handleStepOne() async {
    try {
      EasyLoading.show(status: "Memproses Gambar");
      XFile image = await Get.toNamed(
        CameraPage.routeName,
        arguments: {'withMask': true},
      );

      File file = File(image.path);

      headImageUrl = await firestorageService.uploadImage(
          file, 'head', auth.currentUser!.uid);

      hasilDeteksiKepala = await deteksiService.detectHeadSize(
          file, user!.gender!, Utils.calculateAgeMonth(user!.dateOfBirth!));

      incStep();
    } catch (_) {
      Get.snackbar("Gagal", "Pemrosesan Gambar Gagal");
    } finally {
      EasyLoading.dismiss();
    }
  }

  void handleStepTwo() async {
    try {
      EasyLoading.show(status: "Memproses Gambar");
      XFile file = await Get.toNamed(
        CameraPage.routeName,
        arguments: {'withMask': false},
      );

      File image = File(file.path);

      // await ImageProcessor.resizeImage(imageSrc: image.path, scale: 0.5);

      frontImageUrl = await firestorageService.uploadImage(
          image, 'frontBody', auth.currentUser!.uid);

      hasilDeteksiDepan = await deteksiService.detectFrontBody(
          auth.currentUser!.uid, Utils.getFilename(image.path));

      incStep();
    } catch (_) {
      Get.snackbar("Gagal", "Pemrosesan Gambar Gagal");
    } finally {
      EasyLoading.dismiss();
    }
  }

  void handleStepThree() async {
    try {
      EasyLoading.show(status: "Memproses Gambar");

      XFile file = await Get.toNamed(
        CameraPage.routeName,
        arguments: {'withMask': false},
      );

      File image = File(file.path);

      // await ImageProcessor.resizeImage(imageSrc: file.path, scale: 0.5);

      sideImageUrl = await firestorageService.uploadImage(
          image, 'besideBody', auth.currentUser!.uid);

      hasilDeteksiSamping = await deteksiService.detectSideBody(
          auth.currentUser!.uid, Utils.getFilename(image.path));

      incStep();
    } catch (_) {
      Get.snackbar("Gagal", "Pemrosesan Data Gagal");
    } finally {
      EasyLoading.dismiss();
    }
  }

  Future<Map<String, dynamic>> processData() async {
    final weight = Utils.calculateWeight(
      hasilDeteksiDepan.value!,
      hasilDeteksiSamping.value!,
      hasilDeteksiSamping.tinggi!,
    );
    final age = Utils.calculateAgeMonth(user!.dateOfBirth!);

    processedData = {
      'uid': auth.currentUser!.uid,
      'name': user!.name,
      'jenis_kelamin': user!.gender!.displayName,
      'umur': "$age bulan",
      "tanggal_masuk": Utils.formatDateSql(DateTime.now()),
      "ttl": Utils.formatDateSql(user!.dateOfBirth!),
      "tinggi_badan": "${hasilDeteksiSamping.tinggi!.toStringAsFixed(2)} cm",
      "status_tinggi": heightStatusGetter(
        height: hasilDeteksiSamping.tinggi!,
        age: age,
        gender: user!.gender!,
      ).displayName,
      "berat_badan": "${weight.toStringAsFixed(2)} kg",
      "status_berat": weightStatusGetter(
        weight: weight,
        age: age,
        gender: user!.gender!,
      ).displayName,
      "lingkar_kepala": "${hasilDeteksiKepala.headSize} cm",
      "status": hasilDeteksiKepala.status!.displayName,
      "gambar": headImageUrl,
    };
    return processedData;
  }

  void submitData() async {
    EasyLoading.show(status: "Loading...");
    final weight = Utils.calculateWeight(
      hasilDeteksiDepan.value!,
      hasilDeteksiSamping.value!,
      hasilDeteksiSamping.tinggi!,
    );
    final age = Utils.calculateAgeMonth(user!.dateOfBirth!);

    await growthService
        .addGrowth(
      auth.currentUser!.uid,
      GrowthModel(
        besideBody: sideImageUrl,
        frontBody: frontImageUrl,
        head: headImageUrl,
        headSize: hasilDeteksiKepala.headSize,
        headSizeStatus: hasilDeteksiKepala.status,
        height: hasilDeteksiSamping.tinggi,
        heightStatus: heightStatusGetter(
          height: hasilDeteksiSamping.tinggi!,
          age: age,
          gender: user!.gender!,
        ),
        weight: weight,
        weightStatus: weightStatusGetter(
          weight: weight,
          age: age,
          gender: user!.gender!,
        ),
        takenDate: DateTime.now(),
      ),
    )
        .then(
      (value) {
        processedData["growthID"] = value.id;
        growthService.sendData(processedData).then((_) {
          Get.snackbar("Berhasil", "Data berhasil dikirim");
          EasyLoading.dismiss();
          Get.offAllNamed(HomePage.routeName);
        }).catchError(
          (e) {
            Get.snackbar("Gagal", "Data gagal dikirim");
            EasyLoading.dismiss();
          },
        );
      },
    ).catchError(
      (e) {
        Get.snackbar("Gagal", "Data gagal dikirim");
        EasyLoading.dismiss();
      },
    );
  }

  void incStep() => index.value += 1;

  void decStep() => index.value -= 1;
}
