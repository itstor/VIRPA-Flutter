import 'package:get/get.dart';
import 'package:Virpa/constants/firebase_constant.dart';
import 'package:Virpa/data/model/growth_model.dart';
import 'package:Virpa/services/growth_service.dart';

class GrowthHistoryPageController extends GetxController {
  final growthService = Get.find<GrowthService>();

  Future<List<GrowthModel>> getData() {
    return growthService.getAllGrowth(auth.currentUser!.uid);
  }
}
