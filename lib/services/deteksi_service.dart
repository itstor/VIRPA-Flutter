import 'dart:io';

import 'package:dio/dio.dart';
import 'package:virpa/constants/api_constant.dart';
import 'package:virpa/data/enum/gender_enum.dart';
import 'package:virpa/data/model/front_detection_model.dart';
import 'package:virpa/data/model/head_detection_model.dart';
import 'package:virpa/data/model/side_detection_model.dart';
import 'package:virpa/utils/utils.dart';

class DeteksiService {
  final Dio _dio = Dio();

  Future<HeadDetectionModel> detectHeadSize(
    File image,
    Gender gender,
    int age,
  ) async {
    String fileName = Utils.getFilename(image.path);

    FormData formData = FormData.fromMap({
      "jenis_kelamin": gender.displayName,
      "umur": age,
      "gambar": await MultipartFile.fromFile(image.path, filename: fileName),
    });

    return _dio.post(Api.head, data: formData).then((value) {
      final data = value.data["data"];
      return HeadDetectionModel.fromJson(data);
    }).catchError(
      (error) {
        throw Exception("Pemrosesan gambar gagal");
      },
    );
  }

  Future<FrontDetectionModel> detectFrontBody(
      String uid, String imageUrl) async {
    FormData formData = FormData.fromMap({
      "id": uid,
      "image_name": imageUrl,
    });

    return _dio.post(Api.front, data: formData).then((value) {
      final data = value.data;
      return FrontDetectionModel.fromJson(data);
    }).catchError(
      (error) {
        throw Exception("Pemrosesan gambar gagal");
      },
    );
  }

  Future<SideDetectionModel> detectSideBody(String uid, String imageUrl) async {
    FormData formData = FormData.fromMap({
      "id": uid,
      "image_name": imageUrl,
    });

    return _dio.post(Api.side, data: formData).then((value) {
      final data = value.data;
      return SideDetectionModel.fromJson(data);
    }).catchError(
      (error) {
        throw Exception("Pemrosesan gambar gagal");
      },
    );
  }
}
