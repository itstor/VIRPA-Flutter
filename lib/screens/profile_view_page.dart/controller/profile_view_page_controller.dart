import 'package:get/get.dart';
import 'package:Virpa/constants/firebase_constant.dart';
import 'package:Virpa/data/model/user_model.dart';
import 'package:Virpa/services/user_service.dart';

class ProfileViewPageController extends GetxController {
  final userService = Get.find<UserService>();

  Future<UserModel> getProfileData() async {
    return await userService.getUser(auth.currentUser!.uid);
  }
}
