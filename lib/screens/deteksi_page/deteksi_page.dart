import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import 'package:virpa/screens/camera_page/camera_page.dart';
import 'package:virpa/screens/deteksi_page/controller/deteksi_page_controller.dart';
import 'package:virpa/screens/deteksi_page/section/hasil_front_body_section.dart';
import 'package:virpa/screens/deteksi_page/section/hasil_lingkar_kepala_section.dart';
import 'package:virpa/screens/deteksi_page/section/hasil_side_body_section.dart';
import 'package:virpa/screens/deteksi_page/section/summary_deteksi_section.dart';
import 'package:virpa/screens/deteksi_page/section/tutorial_section.dart';

class DeteksiPage extends StatelessWidget {
  static String routeName = '/deteksi';
  final _controller = Get.find<DeteksiPageController>();

  DeteksiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EasyLoading.instance
      ..userInteractions = false
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..dismissOnTap = false;

    return FlutterEasyLoading(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Deteksi'),
        ),
        body: Obx(
          () => LazyLoadIndexedStack(
            index: _controller.index.value,
            children: [
              DeteksiTutorialSection(
                step: 1,
                description: "Ambil Gambar Lingkar Kepala",
                onClick: _controller.handleStepOne,
              ),
              HasilLingkarKepalaSection(),
              DeteksiTutorialSection(
                step: 2,
                description: "Ambil Gambar Badan Bagian Depan",
                onClick: _controller.handleStepTwo,
              ),
              HasilFrontBodySection(),
              DeteksiTutorialSection(
                step: 3,
                description: "Ambil Gambar Badan Bagian Samping",
                onClick: _controller.handleStepThree,
              ),
              HasilSideBodySection(),
              SummaryDeteksiSection()
            ],
          ),
        ),
      ),
    );
  }
}
