import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virpa/data/enum/head_size_status_enum.dart';
import 'package:virpa/data/enum/height_status_enum.dart';
import 'package:virpa/data/enum/weight_status_enum.dart';

class GrowthModel {
  DateTime? takenDate;
  WeightStatus? weightStatus;
  HeightStatus? heightStatus;
  double? weight;
  double? height;
  double? headSize;
  HeadSizeStatus? headSizeStatus;
  String? frontBody;
  String? besideBody;
  String? head;

  GrowthModel({
    this.takenDate,
    this.weightStatus,
    this.heightStatus,
    this.weight,
    this.height,
    this.headSize,
    this.headSizeStatus,
    this.frontBody,
    this.besideBody,
    this.head,
  });

  Map<String, dynamic> toMap() {
    return {
      'takenDate': takenDate,
      'weightStatus': weightStatus.toString().split('.')[1],
      'heightStatus': heightStatus.toString().split('.')[1],
      'weight': weight,
      'height': height,
      'headSize': headSize,
      'headSizeStatus': headSizeStatus.toString().split('.')[1],
      'frontBody': frontBody,
      'besideBody': besideBody,
      'head': head,
    };
  }

  factory GrowthModel.fromDocument(DocumentSnapshot doc) {
    return GrowthModel(
      takenDate: (doc.get('takenDate') as Timestamp).toDate(),
      weightStatus: WeightStatus.values.firstWhere(
          (e) => e.toString() == "WeightStatus.${doc.get('weightStatus')}"),
      heightStatus: HeightStatus.values.firstWhere(
          (e) => e.toString() == "HeightStatus.${doc.get('heightStatus')}"),
      weight: doc.get('weight'),
      height: doc.get('height'),
      headSize: doc.get('headSize'),
      headSizeStatus: HeadSizeStatus.values.firstWhere(
          (e) => e.toString() == "HeadSizeStatus.${doc.get('headSizeStatus')}"),
      frontBody: doc.get('frontBody'),
      besideBody: doc.get('besideBody'),
      head: doc.get('head'),
    );
  }
}
