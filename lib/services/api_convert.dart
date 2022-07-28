import 'package:virpa/data/enum/head_size_status_enum.dart';

class ApiConvert {
  static HeadSizeStatus getHeadSizeStatus(String status) {
    switch (status) {
      case 'Dibawah Normal':
        return HeadSizeStatus.underNormal;
      case 'Normal':
        return HeadSizeStatus.normal;
      case 'Diatas Normal':
        return HeadSizeStatus.aboveNormal;
      default:
        return HeadSizeStatus.underNormal;
    }
  }
}
