import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virpa/screens/camera_page/camera_page.dart';
import 'package:virpa/screens/deteksi_page/deteksi_page.dart';
import 'package:virpa/screens/growth_history_page/growth_history_page.dart';
import 'package:virpa/screens/home_page/controller/home_page_controller.dart';
import 'package:virpa/screens/profile_view_page.dart/profile_view_page.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/home-page';
  final _controller = Get.find<HomePageController>();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [Image.asset("assets/images/profile.png")],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff0095FF),
              ),
              child: Container(),
            ),
            ListTile(
              leading: const Icon(
                Icons.camera_alt_rounded,
              ),
              title: const Text('Scan'),
              onTap: () => Get.toNamed(DeteksiPage.routeName),
            ),
            ListTile(
              leading: const Icon(Icons.person_rounded),
              title: const Text('Profil Balita'),
              onTap: () => Get.toNamed(ProfileViewPage.routeName),
            ),
            ListTile(
              leading: const Icon(Icons.show_chart),
              title: const Text('Pertumbuhan Balita'),
              onTap: () => Get.toNamed(GrowthHistoryPage.routeName),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_rounded,
              ),
              title: const Text('Logout'),
              onTap: () => _controller.authService.signOut(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Welcome to Virpa Options",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () => Get.toNamed(DeteksiPage.routeName),
                  color: const Color(0xff0095FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/images/camera.png", width: 64.0),
                      const SizedBox(height: 10.0),
                      const Text(
                        "CAMERA",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      const SizedBox(height: 5.0),
                      const Text(
                        "2 Camera \n to Scan",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () => Get.toNamed(ProfileViewPage.routeName),
                  color: const Color(0xff0095FF),
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/images/profile.png", width: 64.0),
                      const SizedBox(height: 10.0),
                      const Text(
                        "PROFILE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      const SizedBox(height: 5.0),
                      const Text(
                        "Baby Profile",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () => Get.toNamed(GrowthHistoryPage.routeName),
                  color: const Color(0xff0095FF),
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/images/increase.png", width: 64.0),
                      const SizedBox(height: 10.0),
                      const Text(
                        "PERTUMBUHAN",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      const SizedBox(height: 5.0),
                      const Text(
                        "Pertumbuhan Balita",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
