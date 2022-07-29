import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virpa/screens/deteksi_page/controller/deteksi_page_controller.dart';

class SummaryDeteksiSection extends StatelessWidget {
  final _controller = Get.find<DeteksiPageController>();
  SummaryDeteksiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _controller.processData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hasil Deteksi",
                style: TextStyle(fontSize: 28.0),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Tinggi badan : "),
                  Text("${snapshot.data!["tinggi_badan"]}"),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Berat Badan : "),
                  Text("${snapshot.data!["berat_badan"]}"),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Status Tinggi Badan : "),
                  Text("${snapshot.data!["status_tinggi"]}"),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Status Berat Badan : "),
                  Text("${snapshot.data!["status_berat"]}"),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _controller.index.value -= 4,
                    child: const Text("Ulangi"),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _controller.submitData,
                    child: const Text("Kirim"),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
