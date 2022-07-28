import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:Virpa/services/auth_service.dart';

class RegisterPageController extends GetxController {
  final authService = Get.find<AuthService>();

  final emailTextController = TextEditingController();
  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  void register() async {
    try {
      EasyLoading.show(status: 'Loading...');

      if (emailTextController.text.isEmpty) {
        throw Exception('Email tidak boleh kosong');
      }

      if (usernameTextController.text.isEmpty) {
        throw Exception('Username tidak boleh kosong');
      }

      if (passwordTextController.text.isEmpty) {
        throw Exception('Password tidak boleh kosong');
      }

      await authService
          .registerWithEmailAndPassword(
            emailTextController.text,
            usernameTextController.text,
            passwordTextController.text,
          )
          .then((_) => Get.snackbar("Berhasil", "Pendaftaran Berhasil"));
    } on FirebaseAuthException {
      Get.snackbar('Register Failed', 'Pendaftaran Gagal');
    } on Exception catch (e) {
      Get.snackbar('Register Failed', e.toString().substring(11));
    } finally {
      EasyLoading.dismiss();
    }
  }
}
