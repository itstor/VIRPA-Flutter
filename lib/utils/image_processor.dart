import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:image/image.dart' as img;

class ImageProcessor {
  static Future cropSquare({
    required String imageSrc,
    required int cropSize,
    required Offset offset,
    required Size cameraPreviewSize,
  }) async {
    var bytes = await File(imageSrc).readAsBytes();
    img.Image src = img.decodeImage(bytes)!;

    img.Image resize = img.copyResize(src,
        width: cameraPreviewSize.height.toInt(),
        height: cameraPreviewSize.width.toInt());

    int offsetY = (resize.height - min(resize.width, resize.height)) ~/ 2;

    img.Image cropImage = img.copyCrop(
      resize,
      offset.dx.toInt() * 2,
      offsetY + (offset.dy.toInt() ~/ 2),
      min(resize.width, resize.height) - (offset.dx.toInt() * 4),
      min(resize.width, resize.height) - (offset.dx.toInt() * 4),
    );

    var jpg = img.encodeJpg(cropImage);
    await File(imageSrc).writeAsBytes(jpg);
  }

  static Future resizeImage({
    required String imageSrc,
    required double scale,
  }) async {
    var bytes = await File(imageSrc).readAsBytes();
    img.Image src = img.decodeImage(bytes)!;

    img.Image resize = img.copyResize(src,
        width: (src.width * scale).toInt(),
        height: (src.height * scale).toInt());

    var jpg = img.encodeJpg(resize);
    await File(imageSrc).writeAsBytes(jpg);
  }
}
