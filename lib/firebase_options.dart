// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD5tFUS61YB2Cewx4kCHOiKiCWEi8gzg_4',
    appId: '1:117902734190:web:0014183903d11e7a55c77f',
    messagingSenderId: '117902734190',
    projectId: 'virpa-7ecb4',
    authDomain: 'virpa-7ecb4.firebaseapp.com',
    storageBucket: 'virpa-7ecb4.appspot.com',
    measurementId: 'G-R4XLDEHT7X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvxApUE1OGFKMNTXRYB_zz0D5-7RlaQ28',
    appId: '1:117902734190:android:96630617847ad3a455c77f',
    messagingSenderId: '117902734190',
    projectId: 'virpa-7ecb4',
    storageBucket: 'virpa-7ecb4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2vKdhmrax5WvSbirG_I1VSz2JwTb6OCc',
    appId: '1:117902734190:ios:712f1f75e863acbf55c77f',
    messagingSenderId: '117902734190',
    projectId: 'virpa-7ecb4',
    storageBucket: 'virpa-7ecb4.appspot.com',
    iosClientId: '117902734190-p1457mmicjri6nttl4frl3pfet85h0i6.apps.googleusercontent.com',
    iosBundleId: 'com.example.virpa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2vKdhmrax5WvSbirG_I1VSz2JwTb6OCc',
    appId: '1:117902734190:ios:712f1f75e863acbf55c77f',
    messagingSenderId: '117902734190',
    projectId: 'virpa-7ecb4',
    storageBucket: 'virpa-7ecb4.appspot.com',
    iosClientId: '117902734190-p1457mmicjri6nttl4frl3pfet85h0i6.apps.googleusercontent.com',
    iosBundleId: 'com.example.virpa',
  );
}
