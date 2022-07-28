import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Virpa/screens/camera_page/controller/camera_page_controller.dart';

class CameraPage extends StatelessWidget {
  static String routeName = '/camera';
  final _controller = Get.find<CameraPageController>();
  CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Obx(() => _controller.cameraController.value != null
              ? AspectRatio(
                  aspectRatio: _controller.aspectRatio.value,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CameraPreview(_controller.cameraController.value!),
                      _controller.withMask
                          ? cameraOverlay(
                              key: _controller.maskKey,
                              padding: _controller.maskPadding.toDouble(),
                              aspectRatio: 1,
                              color: const Color(0x55000000),
                            )
                          : Container(),
                      _controller.imageTaken.value
                          ? _controller.withMask
                              ? Container(
                                  color: Colors.black,
                                  child: Center(
                                    child: SizedBox(
                                      height: _controller.maskSize!.toDouble(),
                                      width: _controller.maskSize!.toDouble(),
                                      child: Image.file(
                                        File(_controller.image.value!.path),
                                      ),
                                    ),
                                  ),
                                )
                              : Image.file(
                                  File(_controller.image.value!.path),
                                )
                          : Container(),
                    ],
                  ),
                )
              : Container()),
          Obx(
            () => Expanded(
              child: _controller.imageTaken.value
                  ? _buildSubmitButton()
                  : _buildCaptureButton(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCaptureButton() {
    return ElevatedButton(
      onPressed: () => _controller.onTakePicture(),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: Colors.white,
        onPrimary: Colors.blue,
      ),
      child: const Icon(Icons.camera, color: Colors.black),
    );
  }

  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => _controller.cancel(),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              primary: Colors.white,
              onPrimary: Colors.blue,
            ),
            child: const Icon(Icons.close, color: Colors.black),
          ),
          ElevatedButton(
            onPressed: () => _controller.submit(),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              primary: Colors.white,
              onPrimary: Colors.blue,
            ),
            child: const Icon(Icons.check, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget cameraOverlay({
    required Key key,
    required double padding,
    required double aspectRatio,
    required Color color,
  }) {
    return LayoutBuilder(
        key: key,
        builder: (context, constraints) {
          double parentAspectRatio =
              constraints.maxWidth / constraints.maxHeight;
          double horizontalPadding;
          double verticalPadding;

          if (parentAspectRatio < aspectRatio) {
            horizontalPadding = padding;
            verticalPadding = (constraints.maxHeight -
                    ((constraints.maxWidth - 2 * padding) / aspectRatio)) /
                2;
          } else {
            verticalPadding = padding;
            horizontalPadding = (constraints.maxWidth -
                    ((constraints.maxHeight - 2 * padding) * aspectRatio)) /
                2;
          }
          return Stack(fit: StackFit.expand, children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Container(width: horizontalPadding, color: color)),
            Align(
                alignment: Alignment.centerRight,
                child: Container(width: horizontalPadding, color: color)),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    margin: EdgeInsets.only(
                        left: horizontalPadding, right: horizontalPadding),
                    height: verticalPadding,
                    color: color)),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    margin: EdgeInsets.only(
                        left: horizontalPadding, right: horizontalPadding),
                    height: verticalPadding,
                    color: color)),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              decoration: BoxDecoration(border: Border.all(color: Colors.cyan)),
            )
          ]);
        });
  }
}
