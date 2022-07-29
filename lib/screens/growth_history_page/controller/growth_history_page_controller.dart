import 'package:virpa/services/user_service.dart';
import 'package:get/get.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/services/growth_service.dart';

class GrowthHistoryPageController extends GetxController {
  final growthService = Get.find<GrowthService>();
  final userService = Get.find<UserService>();

  Future<Map<String, dynamic>> getData() {
    return growthService
        .getAllGrowth(auth.currentUser!.uid)
        .then((value) async {
      final user = await userService.getUser(auth.currentUser!.uid);
      return {
        'user': user,
        'growth': value,
      };
    });
  }
}
