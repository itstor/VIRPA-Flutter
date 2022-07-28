import 'package:get/get.dart';
import 'package:virpa/screens/login_page/controller/login_page_controller.dart';
import 'package:virpa/services/auth_service.dart';

class LoginPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(() => LoginPageController());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
