import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/data/enum/gender_enum.dart';
import 'package:virpa/data/model/user_model.dart';
import 'package:virpa/screens/home_page/home_page.dart';
import 'package:virpa/services/user_service.dart';

class ProfileSettingPageController extends GetxController {
  final _userService = Get.find<UserService>();
  Rx<Gender> gender = Rx(Gender.L);
  TextEditingController nameTextController = TextEditingController();
  String? dateOfBirth;
  bool firstTime = false;

  @override
  void onInit() {
    super.onInit();

    final passedArguments = Get.arguments;

    nameTextController.text = passedArguments?['name'] ?? '';
    gender.value = passedArguments?['gender'] ?? Gender.L;
    dateOfBirth = passedArguments?['dateOfBirth'] != null
        ? (passedArguments?['dateOfBirth'] as DateTime).toLocal().toString()
        : '';

    if (dateOfBirth == '') {
      firstTime = true;
    }
  }

  ValueChanged<Gender?> genderOnChange() {
    return (value) => gender.value = value!;
  }

  void saveProfile() async {
    try {
      if (nameTextController.text.isEmpty || dateOfBirth == null) {
        throw Exception("Data tidak boleh kosong");
      }

      EasyLoading.show(status: "Loading...");
      final data = UserModel(
        name: nameTextController.text,
        dateOfBirth: DateTime.parse(dateOfBirth!),
        gender: gender.value,
      );

      await _userService.updateProfile(auth.currentUser!.uid, data);

      Get.snackbar("Berhasil", "Profile berhasil disimpan");

      if (firstTime) {
        Get.offAllNamed(HomePage.routeName);
      }
    } catch (e) {
      Get.snackbar("Error", e.toString().substring(11));
    } finally {
      EasyLoading.dismiss();
    }
  }
}
