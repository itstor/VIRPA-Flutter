import 'package:Virpa/data/enum/gender_enum.dart';
import 'package:Virpa/data/enum/height_status_enum.dart';

HeightStatus heightStatusGetter({
  required double height,
  required int age,
  required Gender gender,
}) {
  HeightStatus heightStatus;
  if (gender == Gender.L) {
    switch (age) {
      case 0:
        if (height < 44.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 46.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 55.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 1:
        if (height < 48.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 50.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 60.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 2:
        if (height < 52.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 54.3) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 64.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 3:
        if (height < 55.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 57.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 67.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 4:
        if (height < 57.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 59.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 70.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 5:
        if (height < 59.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 61.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 72.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 6:
        if (height < 61.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 63.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 74.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 7:
        if (height < 62.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 64.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 75.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 8:
        if (height < 64.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 66.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 77.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 9:
        if (height < 65.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 67.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 78.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 10:
        if (height < 66.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 68.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 80.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 11:
        if (height < 67.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 69.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 81.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 12:
        if (height < 68.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 70.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 82.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 13:
        if (height < 69.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 72.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 84.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 14:
        if (height < 70.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 73.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 85.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 15:
        if (height < 71.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 74.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 86.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 16:
        if (height < 72.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 74.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 88.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 17:
        if (height < 73.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 75.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 89.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 18:
        if (height < 74.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 76.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 90.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 19:
        if (height < 75.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 77.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 91.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 20:
        if (height < 75.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 78.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 92.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 21:
        if (height < 76.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 79.3) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 93.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 22:
        if (height < 77.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 80.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 94.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 23:
        if (height < 78.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 79.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 95.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 24:
        if (height < 78.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 81.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 97.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 25:
        if (height < 78.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 97.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 26:
        if (height < 79.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 98.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 27:
        if (height < 79.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 99.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 28:
        if (height < 80.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 100.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 29:
        if (height < 81.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 101.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 30:
        if (height < 81.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 93.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 102.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 31:
        if (height < 82.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 103.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 32:
        if (height < 82.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 103.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 33:
        if (height < 83.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 104.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 34:
        if (height < 83.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 105.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 35:
        if (height < 84.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 106.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 36:
        if (height < 85.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 93.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 107.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 37:
        if (height < 85.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 108.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 38:
        if (height < 86.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 108.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 39:
        if (height < 86.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 109.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 40:
        if (height < 87.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 110.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 41:
        if (height < 87.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 111.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 42:
        if (height < 88.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 93.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 111.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 43:
        if (height < 88.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 112.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 44:
        if (height < 88.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 113.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 45:
        if (height < 89.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 113.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 46:
        if (height < 89.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 114.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 47:
        if (height < 90.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 115.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 48:
        if (height < 90.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 93.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 115.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 49:
        if (height < 91.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 116.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 50:
        if (height < 91.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 117.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 51:
        if (height < 92.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 117.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 52:
        if (height < 92.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 118.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 53:
        if (height < 93.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 119.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 54:
        if (height < 93.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 119.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 55:
        if (height < 93.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 98.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 120.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 56:
        if (height < 94.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 98.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 121.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 57:
        if (height < 94.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 99.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 121.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 58:
        if (height < 95.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 99.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 122.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 59:
        if (height < 95.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 100.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 123.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 60:
        if (height < 96.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 100.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 123.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      default:
        return HeightStatus.normal;
    }
  } else {
    switch (age) {
      case 0:
        if (height < 43.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 45.3) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 54.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 1:
        if (height < 47.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 49.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 59.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 2:
        if (height < 51.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 52.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 63.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 3:
        if (height < 53.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 55.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 66.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 4:
        if (height < 55.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 57.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 68.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 5:
        if (height < 57.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 59.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 70.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 6:
        if (height < 58.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 61.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 72.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 7:
        if (height < 60.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 62.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 74.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 8:
        if (height < 61.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 63.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 75.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 9:
        if (height < 62.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 65.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 77.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 10:
        if (height < 64.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 66.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 78.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 11:
        if (height < 65.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 67.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 80.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 12:
        if (height < 66.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 68.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 81.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 13:
        if (height < 67.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 69.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 83.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 14:
        if (height < 68.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 70.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 84.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 15:
        if (height < 69.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 71.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 85.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 16:
        if (height < 70.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 72.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 87.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 17:
        if (height < 71.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 73.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 88.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 18:
        if (height < 72.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 74.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 89.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 19:
        if (height < 72.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 75.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 90.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 20:
        if (height < 73.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 76.6) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 91.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 21:
        if (height < 74.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 77.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 92.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 22:
        if (height < 75.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 78.3) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 94.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 23:
        if (height < 76.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 79.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 95.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 24:
        if (height < 76.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 79.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 96.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 25:
        if (height < 76.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 79.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 96.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 26:
        if (height < 77.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 80.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 97.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 27:
        if (height < 78.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 81.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 98.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 28:
        if (height < 78.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 82.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 99.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 29:
        if (height < 79.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 82.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 100.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 30:
        if (height < 80.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 83.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 101.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 31:
        if (height < 80.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 84.2) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 102.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 32:
        if (height < 81.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 84.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 103.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 33:
        if (height < 81.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 85.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 103.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 34:
        if (height < 82.5) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 86.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 104.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 35:
        if (height < 83.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 86.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 105.6) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 36:
        if (height < 83.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 87.3) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 106.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 37:
        if (height < 84.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 87.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 107.3) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 38:
        if (height < 84.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 88.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 108.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 39:
        if (height < 85.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 89.1) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 108.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 40:
        if (height < 85.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 89.7) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 109.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 41:
        if (height < 86.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 90.3) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 110.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 42:
        if (height < 86.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 90.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 111.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 43:
        if (height < 87.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 91.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 112.0) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 44:
        if (height < 87.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 91.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 112.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 45:
        if (height < 88.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 92.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 113.5) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 46:
        if (height < 88.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 93.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 114.2) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 47:
        if (height < 89.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 93.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 114.9) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 48:
        if (height < 89.8) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 115.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 49:
        if (height < 90.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 94.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 116.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 50:
        if (height < 90.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 117.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 51:
        if (height < 91.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 95.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 117.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 52:
        if (height < 91.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 118.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 53:
        if (height < 92.1) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 96.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 119.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 54:
        if (height < 92.6) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 97.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 119.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 55:
        if (height < 93.0) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 97.5) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 120.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 56:
        if (height < 93.4) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 98.0) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 121.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 57:
        if (height < 93.9) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 98.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 121.8) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 58:
        if (height < 94.3) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 98.9) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 122.4) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 59:
        if (height < 94.7) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 99.4) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 123.1) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      case 60:
        if (height < 95.2) {
          heightStatus = HeightStatus.severlyStunted;
        } else if (height <= 99.8) {
          heightStatus = HeightStatus.stunted;
        } else if (height <= 123.7) {
          heightStatus = HeightStatus.normal;
        } else {
          heightStatus = HeightStatus.tinggi;
        }
        break;
      default:
        return HeightStatus.normal;
    }
  }
  return heightStatus;
}
