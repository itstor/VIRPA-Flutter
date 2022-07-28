import 'package:get/get.dart';
import 'package:Virpa/screens/camera_page/controller/camera_page_controller.dart';

class CameraPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CameraPageController>(CameraPageController());
  }
}
