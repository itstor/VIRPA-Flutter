import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:Virpa/data/enum/gender_enum.dart';
import 'package:Virpa/screens/global_components/custom_radio_options.dart';
import 'package:Virpa/screens/profile_setting_page/controller/profile_setting_page_controller.dart';

class ProfileSettingPage extends StatelessWidget {
  static String routeName = '/profile-setting-page';
  final _controller = Get.find<ProfileSettingPageController>();
  ProfileSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterEasyLoading(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Isi Profile"),
          centerTitle: true,
          foregroundColor: Colors.black,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    hintText: "Masukan Nama Lengkap",
                    labelText: "Nama Lengkap",
                  ),
                  controller: _controller.nameTextController,
                ),
                DateTimePicker(
                  initialValue: _controller.dateOfBirth,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  dateLabelText: 'Date',
                  onChanged: (val) => _controller.dateOfBirth = val,
                ),
                Obx(() => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 18.0,
                        ),
                        const Text(
                          "Jenis Kelamin",
                          style: TextStyle(fontSize: 18),
                        ),
                        MyRadioOption<Gender>(
                          value: Gender.L,
                          groupValue: _controller.gender.value,
                          label: '1',
                          text: 'Laki-laki',
                          onChanged: _controller.genderOnChange(),
                        ),
                        MyRadioOption<Gender>(
                          value: Gender.P,
                          groupValue: _controller.gender.value,
                          label: '121',
                          text: 'Perempuan',
                          onChanged: _controller.genderOnChange(),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 18.0,
                ),
                InkWell(
                  onTap: _controller.saveProfile,
                  child: Container(
                    color: const Color(0xff0095FF),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    width: double.infinity,
                    child: const Center(
                      child: Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
