import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:Virpa/constants/api_constant.dart';
import 'package:Virpa/constants/firebase_constant.dart';
import 'package:Virpa/data/model/growth_model.dart';

class GrowthService {
  final Dio _dio = Dio();

  Future<List<GrowthModel>> getAllGrowth(String uid) async {
    final data = await firebaseFirestore
        .collection('growths')
        .doc(uid)
        .collection('growth')
        .get();

    return data.docs.isEmpty
        ? []
        : data.docs.map((e) => GrowthModel.fromDocument(e)).toList();
  }

  Future<DocumentReference<Map<String, dynamic>>> addGrowth(
      String uid, GrowthModel growthModel) async {
    return firebaseFirestore
        .collection('growths')
        .doc(uid)
        .collection('growth')
        .add(growthModel.toMap());
  }

  Future sendData(Map<String, dynamic> data) async {
    return _dio.post(Api.save, data: data);
  }
}
