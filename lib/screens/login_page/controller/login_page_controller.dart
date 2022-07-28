import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:Virpa/services/auth_service.dart';

class LoginPageController extends GetxController {
  final authService = Get.find<AuthService>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    try {
      EasyLoading.show(status: 'Sign In...');

      if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
        throw Exception('Username or Password is empty');
      }

      await authService.signInWithUsernameAndPassword(
        usernameController.text,
        passwordController.text,
      );
    } on FirebaseAuthException {
      Get.snackbar('Login Failed', 'Invalid username or password');
    } on Exception catch (e) {
      Get.snackbar('Login Failed', e.toString().substring(11));
    } finally {
      EasyLoading.dismiss();
    }
  }
}
