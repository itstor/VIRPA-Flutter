import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:Virpa/utils/image_processor.dart';

class CameraPageController extends GetxController {
  late List<CameraDescription> _cameras;
  Rx<XFile?> image = Rx(null);
  Rx<CameraController?> cameraController = Rx(null);
  Rx<double> aspectRatio = (9 / 16).obs;
  GlobalKey maskKey = GlobalKey();
  int? maskSize = 0;
  int maskPadding = 50;
  Offset cropOffset = const Offset(0, 0);
  bool withMask = false;
  Rx<bool> imageTaken = false.obs;

  @override
  void onInit() async {
    withMask = (Get.arguments ?? {})['withMask'] ?? false;
    _cameras = await availableCameras();
    cameraController.value =
        CameraController(_cameras[0], ResolutionPreset.max);
    cameraController.value!.initialize().then((_) {
      cameraController.refresh();

      if (withMask) {
        aspectRatio.value = 1 / cameraController.value!.value.aspectRatio;
        maskSize =
            maskKey.currentContext!.size!.width.toInt() - maskPadding * 2;
        cropOffset = Offset(maskPadding.toDouble(),
            (maskKey.currentContext!.size!.height - maskSize!) / 2);
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    cameraController.value!.dispose();
    super.onClose();
  }

  void onTakePicture() async {
    XFile file = await cameraController.value!.takePicture();
    if (withMask) {
      await ImageProcessor.cropSquare(
        imageSrc: file.path,
        cropSize: maskSize!,
        offset: cropOffset,
        cameraPreviewSize: cameraController.value!.value.previewSize!,
      );
    }
    image.value = file;
    imageTaken.value = true;
  }

  void cancel() {
    image.value = null;
    imageTaken.value = false;
  }

  void submit() {
    Get.back(result: image.value);
  }
}
