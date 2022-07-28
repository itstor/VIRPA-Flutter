import 'package:get/get.dart';
import 'package:Virpa/screens/home_page/controller/home_page_controller.dart';
import 'package:Virpa/services/auth_service.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
