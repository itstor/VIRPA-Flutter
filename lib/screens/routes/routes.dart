import 'package:get/get.dart';
import 'package:virpa/screens/camera_page/camera_page.dart';
import 'package:virpa/screens/camera_page/camera_page_binding.dart';
import 'package:virpa/screens/deteksi_page/deteksi_page.dart';
import 'package:virpa/screens/deteksi_page/deteksi_page_binding.dart';
import 'package:virpa/screens/growth_history_page/growth_history_page.dart';
import 'package:virpa/screens/growth_history_page/growth_history_page_binding.dart';
import 'package:virpa/screens/home_page/home_page.dart';
import 'package:virpa/screens/home_page/home_page_binding.dart';
import 'package:virpa/screens/login_page/login_page.dart';
import 'package:virpa/screens/login_page/login_page_binding.dart';
import 'package:virpa/screens/profile_setting_page/profile_setting_page.dart';
import 'package:virpa/screens/profile_setting_page/profile_setting_page_binding.dart';
import 'package:virpa/screens/profile_view_page.dart/profile_view_page.dart';
import 'package:virpa/screens/profile_view_page.dart/profile_view_page_binding.dart';
import 'package:virpa/screens/register_page/register_page.dart';
import 'package:virpa/screens/register_page/register_page_binding.dart';
import 'package:virpa/screens/splash_screen/splash_screen.dart';
import 'package:virpa/screens/welcome_page/welcome_page.dart';

class AppRoute {
  static final routes = [
    GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
    GetPage(name: WelcomePage.routeName, page: () => const WelcomePage()),
    GetPage(
        name: LoginPage.routeName,
        page: () => LoginPage(),
        binding: LoginPageBinding()),
    GetPage(
        name: RegisterPage.routeName,
        page: () => RegisterPage(),
        binding: RegisterPageBinding()),
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: ProfileSettingPage.routeName,
      page: () => ProfileSettingPage(),
      binding: ProfileSettingPageBinding(),
    ),
    GetPage(
      name: ProfileViewPage.routeName,
      page: () => ProfileViewPage(),
      binding: ProfileViewPageBinding(),
    ),
    GetPage(
      name: GrowthHistoryPage.routeName,
      page: () => GrowthHistoryPage(),
      binding: GrowthHistoryPageBinding(),
    ),
    GetPage(
      name: CameraPage.routeName,
      page: () => CameraPage(),
      binding: CameraPageBinding(),
    ),
    GetPage(
      name: DeteksiPage.routeName,
      page: () => DeteksiPage(),
      binding: DeteksiPageBinding(),
    ),
  ];
}
