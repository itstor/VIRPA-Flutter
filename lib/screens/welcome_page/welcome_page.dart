import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:Virpa/screens/login_page/login_page.dart';
import 'package:Virpa/screens/register_page/register_page.dart';

class WelcomePage extends StatelessWidget {
  static String routeName = '/welcome-page';

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterEasyLoading(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("VIRPA"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "VIRPA",
                    style: TextStyle(
                      fontFamily: 'Knewave',
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Colors.blue[700],
                    ),
                  ),
                  const Text(
                    "Virtual Posyandu",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/pertama.png"),
                )),
              ),
              Column(
                children: const [
                  Text(
                    "toodler growth app",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  //login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => Get.toNamed(LoginPage.routeName),
                    //defining the shape
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),

                  //signup button
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => Get.toNamed(RegisterPage.routeName),
                    color: const Color(0xff0095FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
