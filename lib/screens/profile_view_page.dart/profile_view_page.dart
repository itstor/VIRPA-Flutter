import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Virpa/data/enum/gender_enum.dart';
import 'package:Virpa/data/model/user_model.dart';
import 'package:Virpa/screens/profile_setting_page/profile_setting_page.dart';
import 'package:Virpa/screens/profile_view_page.dart/controller/profile_view_page_controller.dart';
import 'package:Virpa/utils/Utils.dart';

class ProfileViewPage extends StatelessWidget {
  static const routeName = '/profile-view';
  final _controller = Get.find<ProfileViewPageController>();
  ProfileViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<UserModel>(
          future: _controller.getProfileData(),
          builder: (context, profileSnap) {
            if (profileSnap.connectionState == ConnectionState.waiting) {
              return const Center(child: Text("Loading"));
            }

            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (profileSnap.data?.name)!,
                    style: const TextStyle(fontSize: 28.0),
                  ),
                  Text(profileSnap.data?.gender == Gender.L
                      ? "Laki-laki"
                      : "Perempuan"),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Tanggal Lahir : "),
                      Text(Utils.formatDate((profileSnap.data?.dateOfBirth)!)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Umur : "),
                      Text(Utils.calculateAgeMonth(
                              (profileSnap.data?.dateOfBirth)!)
                          .toString()),
                      const Text(" bulan"),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  if ((profileSnap.data?.headSize) != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Lingkar Kepala : "),
                        Text((profileSnap.data?.headSize).toString()),
                        const Text(" cm"),
                      ],
                    ),
                  const SizedBox(
                    height: 8,
                  ),
                  if ((profileSnap.data?.headSizeStatus) != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Status Lingkar Kepala : "),
                        Text((profileSnap.data?.headSizeStatus)!.displayName),
                      ],
                    ),
                  const SizedBox(
                    height: 18,
                  ),
                  InkWell(
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      width: 175.0,
                      child: const Center(
                          child: Text(
                        "Ubah Profile",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    onTap: () => Get.toNamed(
                      ProfileSettingPage.routeName,
                      arguments: {
                        "name": profileSnap.data?.name,
                        "dateOfBirth": profileSnap.data?.dateOfBirth,
                        "gender": profileSnap.data?.gender,
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
