import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Virpa/screens/deteksi_page/controller/deteksi_page_controller.dart';

class HasilLingkarKepalaSection extends StatelessWidget {
  final _controller = Get.find<DeteksiPageController>();
  HasilLingkarKepalaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const Text("Lingkar kepala : "),
              Text("${_controller.hasilDeteksiKepala.headSize} cm"),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Status: "),
              Text(_controller.hasilDeteksiKepala.status!.displayName),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _controller.decStep,
                child: const Text("Back"),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: _controller.incStep,
                child: const Text("Next"),
              )
            ],
          )
        ],
      ),
    );
  }
}
