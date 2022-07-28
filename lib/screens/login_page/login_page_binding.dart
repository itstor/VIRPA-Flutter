import 'package:get/get.dart';
import 'package:Virpa/screens/login_page/controller/login_page_controller.dart';
import 'package:Virpa/services/auth_service.dart';

class LoginPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(() => LoginPageController());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
