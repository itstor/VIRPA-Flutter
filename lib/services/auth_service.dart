import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:virpa/constants/firebase_constant.dart';
import 'package:virpa/data/model/user_model.dart';

class AuthService {
  CollectionReference users = firebaseFirestore.collection('users');
  CollectionReference growths = firebaseFirestore.collection('growths');

  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential authResult = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      return authResult;
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future<UserCredential?> signInWithUsernameAndPassword(
      String username, String password) async {
    try {
      String userEmail = await users
          .where('username', isEqualTo: username)
          .get()
          .then((value) => value.docs.first.get('email'))
          .catchError((_) => throw Exception('Username not found'));

      UserCredential authResult = await auth.signInWithEmailAndPassword(
          email: userEmail, password: password);

      return authResult;
    } on FirebaseAuthException {
      rethrow;
    }
  }

  Future<UserCredential?> registerWithEmailAndPassword(
      String email, String username, String password) async {
    try {
      final isUsernameTaken =
          await users.where('username', isEqualTo: username).get();

      if (isUsernameTaken.docs.isNotEmpty) {
        throw Exception('Username is already taken');
      }

      UserCredential authResult = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      await users
          .doc(auth.currentUser?.uid)
          .set(UserModel(
            uid: auth.currentUser!.uid,
            email: email,
            username: username,
            dateOfBirth: null,
            gender: null,
            name: null,
          ).toMap()
            ..['createdAt'] = FieldValue.serverTimestamp())
          .then((value) {
        growths.doc(auth.currentUser?.uid);
      });

      return authResult;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw Exception('Email is already in use');
      } else {
        rethrow;
      }
    }
  }

  void signOut() async {
    await auth.signOut();
  }

  Future<bool> isUserAlreadyFilledProfile(String uid) async {
    try {
      DocumentSnapshot user = await users.doc(uid).get();
      return user.get('name') != null &&
          user.get('dateOfBirth') != null &&
          user.get('gender') != null;
    } catch (firebaseAuthException) {
      rethrow;
    }
  }
}
