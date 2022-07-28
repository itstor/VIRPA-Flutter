import 'package:get/get.dart';
import 'package:virpa/screens/growth_history_page/controller/growth_history_page_controller.dart';
import 'package:virpa/services/growth_service.dart';

class GrowthHistoryPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GrowthHistoryPageController>(
        () => GrowthHistoryPageController());
    Get.lazyPut<GrowthService>(() => GrowthService());
  }
}
