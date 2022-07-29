import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/screens/home_page/home_page.dart';
import 'package:virpa/screens/profile_setting_page/profile_setting_page.dart';
import 'package:virpa/screens/welcome_page/welcome_page.dart';
import 'package:virpa/services/auth_service.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;

  final _authService = Get.find<AuthService>();

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) async {
    if (user == null) {
      Get.offAllNamed(WelcomePage.routeName);
    } else {
      final bool isUserAlreadyFilledProfile =
          await _authService.isUserAlreadyFilledProfile(auth.currentUser!.uid);

      if (isUserAlreadyFilledProfile) {
        Get.offAllNamed(HomePage.routeName);
      } else {
        Get.offAllNamed(ProfileSettingPage.routeName);
      }
    }
  }
}
