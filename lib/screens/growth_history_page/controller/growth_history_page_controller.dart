import 'package:Virpa/services/user_service.dart';
import 'package:get/get.dart';
import 'package:Virpa/constants/firebase_constant.dart';
import 'package:Virpa/data/model/growth_model.dart';
import 'package:Virpa/services/growth_service.dart';

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
