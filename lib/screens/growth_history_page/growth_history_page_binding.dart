import 'package:Virpa/services/user_service.dart';
import 'package:get/get.dart';
import 'package:Virpa/screens/growth_history_page/controller/growth_history_page_controller.dart';
import 'package:Virpa/services/growth_service.dart';

class GrowthHistoryPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GrowthHistoryPageController>(
        () => GrowthHistoryPageController());
    Get.lazyPut<GrowthService>(() => GrowthService());
    Get.lazyPut<UserService>(() => UserService());
  }
}
