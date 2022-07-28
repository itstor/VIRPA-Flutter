import 'package:Virpa/data/enum/head_size_status_enum.dart';
import 'package:Virpa/services/api_convert.dart';

class HeadDetectionModel {
  double? headSize;
  HeadSizeStatus? status;
  String? serverImagePath;
  String? firestorageImagePath;

  HeadDetectionModel({
    this.headSize,
    this.status,
    this.serverImagePath,
    this.firestorageImagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'headSize': headSize,
      'status': status.toString(),
      'serverImagePath': serverImagePath,
      'firestorageImagePath': firestorageImagePath,
    };
  }

  factory HeadDetectionModel.fromJson(Map<String, dynamic> json) {
    return HeadDetectionModel(
      headSize: double.tryParse(json['lingkar_kepala']),
      status: ApiConvert.getHeadSizeStatus(json['status']),
      serverImagePath: json['pathGambar'],
      firestorageImagePath: json['pathGambarFire'],
    );
  }
}
