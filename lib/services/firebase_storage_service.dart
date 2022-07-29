import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/utils/utils.dart';

class FirebaseStorageService {
  Future<String?> uploadImage(File image, String type, String id) async {
    UploadTask task = firebaseStorage
        .ref('images/$id/$type/${Utils.getFilename(image.path)}')
        .putFile(image);

    try {
      var dowurl = await (await task).ref.getDownloadURL();
      return dowurl.toString();
    } on FirebaseException catch (_) {
      throw Exception("Proses Gagal");
    }
  }
}
