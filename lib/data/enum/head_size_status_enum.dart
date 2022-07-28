import 'package:flutter/foundation.dart';

enum HeadSizeStatus {
  underNormal,
  normal,
  aboveNormal;

  String get displayName {
    switch (this) {
      case HeadSizeStatus.underNormal:
        return "Under Normal";
      case HeadSizeStatus.normal:
        return "Normal";
      case HeadSizeStatus.aboveNormal:
        return "Above Normal";
    }
  }
}
