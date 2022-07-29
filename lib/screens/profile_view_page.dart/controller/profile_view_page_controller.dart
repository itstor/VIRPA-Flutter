import 'package:get/get.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/data/model/user_model.dart';
import 'package:virpa/services/user_service.dart';

class ProfileViewPageController extends GetxController {
  final userService = Get.find<UserService>();

  Future<UserModel> getProfileData() async {
    return await userService.getUser(auth.currentUser!.uid);
  }
}
