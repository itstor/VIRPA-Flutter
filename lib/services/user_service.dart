import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/data/model/user_model.dart';

class UserService {
  Future<void> updateProfile(String uid, UserModel data) {
    try {
      final profile = data.toMap();
      profile.removeWhere((key, value) => value == null);
      return firebaseFirestore.collection('users').doc(uid).update(profile);
    } catch (_) {
      throw Exception('Update profile gagal');
    }
  }

  Future<UserModel> getUser(String uid) async {
    return UserModel.fromDocument(
        await firebaseFirestore.collection('users').doc(uid).get());
  }
}
