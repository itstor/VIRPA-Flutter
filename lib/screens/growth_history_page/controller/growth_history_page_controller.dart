import 'package:get/get.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/data/model/growth_model.dart';
import 'package:virpa/services/growth_service.dart';

class GrowthHistoryPageController extends GetxController {
  final growthService = Get.find<GrowthService>();

  Future<List<GrowthModel>> getData() {
    return growthService.getAllGrowth(auth.currentUser!.uid);
  }
}
