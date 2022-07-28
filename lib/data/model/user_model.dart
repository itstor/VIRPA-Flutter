import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Virpa/data/enum/gender_enum.dart';
import 'package:Virpa/data/enum/head_size_status_enum.dart';

class UserModel {
  String? uid;
  String? email;
  String? username;
  String? name;
  Gender? gender;
  double? headSize;
  HeadSizeStatus? headSizeStatus;
  DateTime? dateOfBirth;

  UserModel({
    this.uid,
    this.email,
    this.username,
    this.name,
    this.gender,
    this.dateOfBirth,
    this.headSize,
    this.headSizeStatus,
  });

  Map<String, dynamic> toMap() {
    late String? gender;
    if (this.gender == null) {
      gender = null;
    } else {
      gender = this.gender == Gender.L ? "Laki-laki" : "Perempuan";
    }

    return {
      'uid': uid,
      'email': email,
      'username': username,
      'name': name,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'headSize': headSize,
      'headSizeStatus': headSizeStatus == null
          ? null
          : headSizeStatus.toString().split('.')[1]
    };
  }

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel(
      uid: doc.get('uid'),
      email: doc.get('email'),
      username: doc.get('username'),
      name: doc.get('name'),
      gender: doc.get('gender') == "Laki-laki" ? Gender.L : Gender.P,
      dateOfBirth: (doc.get('dateOfBirth') as Timestamp).toDate(),
      headSize: doc.get('headSize').toDouble(),
      headSizeStatus: HeadSizeStatus.values.firstWhere(
          (e) => e.toString() == "HeadSizeStatus.${doc.get('headSizeStatus')}"),
    );
  }
}
