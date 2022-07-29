import 'package:get/get.dart';
import 'package:virpa/screens/register_page/controller/register_page_controller.dart';
import 'package:virpa/services/auth_service.dart';

class RegisterPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPageController>(() => RegisterPageController());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
