import 'package:get/get.dart';
import 'package:virpa/screens/deteksi_page/controller/deteksi_page_controller.dart';
import 'package:virpa/services/deteksi_service.dart';
import 'package:virpa/services/firebase_storage_service.dart';
import 'package:virpa/services/growth_service.dart';
import 'package:virpa/services/user_service.dart';

class DeteksiPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseStorageService>(() => FirebaseStorageService());
    Get.lazyPut<DeteksiService>(() => DeteksiService());
    Get.lazyPut<UserService>(() => UserService());
    Get.lazyPut<GrowthService>(() => GrowthService());
    Get.put<DeteksiPageController>(DeteksiPageController());
  }
}
