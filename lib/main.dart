import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:virpa/controller/auth_controller.dart';
import 'package:virpa/firebase_options.dart';
import 'package:virpa/screens/routes/routes.dart';
import 'package:virpa/screens/splash_screen/splash_screen.dart';
import 'package:virpa/services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((_) {
    Get.lazyPut(() => AuthService());
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    EasyLoading.instance
      ..userInteractions = false
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..dismissOnTap = false;

    return GetMaterialApp(
      title: 'VIRPA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      getPages: AppRoute.routes,
    );
  }
}
