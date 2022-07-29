import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virpa/data/model/growth_model.dart';
import 'package:virpa/screens/growth_history_page/controller/growth_history_page_controller.dart';
import 'package:virpa/utils/Utils.dart';

class GrowthHistoryPage extends StatelessWidget {
  static String routeName = '/growth-history';
  final _controller = Get.find<GrowthHistoryPageController>();

  GrowthHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Pertumbuhan Balita'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _controller.getData(),
        builder: (context, profileSnap) {
          if (profileSnap.connectionState == ConnectionState.waiting) {
            return const Center(child: Text("Loading"));
          }

          if (profileSnap.data!.isEmpty) {
            return Container(
              padding: const EdgeInsets.all(18.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Belum ada riwayat pengukuran"),
                  SizedBox(
                    height: 18.0,
                  ),
                ],
              ),
            );
          }

          return ListView(
            children: [
              for (GrowthModel growth in profileSnap.data!['growth'])
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(118, 68, 137, 255)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0))),
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Umur: "),
                            Text(
                                "${Utils.calculateAgeMonth(profileSnap.data!['user'].dateOfBirth, toDate: growth.takenDate)} bulan"),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Tanggal: "),
                            Text(Utils.formatDate(growth.takenDate!)),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Status Berat Badan: "),
                            Text(growth.weightStatus!.displayName),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Status Tinggi Badan: "),
                            Text(growth.heightStatus!.displayName),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Berat Badan: "),
                            Text("${growth.weight!.toStringAsFixed(2)} kg")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Tinggi Badan: "),
                            Text("${growth.height!.toStringAsFixed(2)} cm")
                          ]),
                      if (growth.headSize != null)
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Lingkar Kepala: "),
                              Text("${growth.headSize!.toStringAsFixed(2)} cm")
                            ]),
                      if (growth.headSizeStatus != null)
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Status Lingkar Kepala: "),
                              Text(growth.headSizeStatus!.displayName)
                            ]),
                    ],
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}
