import 'package:get/get.dart';
import 'package:virpa/screens/profile_view_page.dart/controller/profile_view_page_controller.dart';
import 'package:virpa/services/user_service.dart';

class ProfileViewPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileViewPageController>(() => ProfileViewPageController());
    Get.lazyPut<UserService>(() => UserService());
  }
}
