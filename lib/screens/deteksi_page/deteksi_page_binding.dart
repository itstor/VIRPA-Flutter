import 'package:get/get.dart';
import 'package:Virpa/screens/deteksi_page/controller/deteksi_page_controller.dart';
import 'package:Virpa/services/deteksi_service.dart';
import 'package:Virpa/services/firebase_storage_service.dart';
import 'package:Virpa/services/growth_service.dart';
import 'package:Virpa/services/user_service.dart';

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
