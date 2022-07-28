import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virpa/data/model/growth_model.dart';

class GrowthListModel {
  List<GrowthModel>? growths;

  GrowthListModel({
    this.growths,
  });

  Map<String, dynamic> toMap() {
    return {
      'growths': growths,
    };
  }

  factory GrowthListModel.fromDocument(DocumentSnapshot doc) {
    return GrowthListModel(
      growths: (doc as List<dynamic>).isEmpty
          ? []
          : (doc as List<dynamic>)
              .map((e) => GrowthModel.fromDocument(e as DocumentSnapshot))
              .toList(),
    );
  }
}
