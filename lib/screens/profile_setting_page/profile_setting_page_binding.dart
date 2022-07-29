import 'package:get/get.dart';
import 'package:virpa/screens/profile_setting_page/controller/profile_setting_page_controller.dart';
import 'package:virpa/services/user_service.dart';

class ProfileSettingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileSettingPageController>(
        () => ProfileSettingPageController());
    Get.lazyPut<UserService>(() => UserService());
  }
}
