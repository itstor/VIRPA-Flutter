import 'package:Virpa/data/enum/gender_enum.dart';
import 'package:Virpa/data/enum/weight_status_enum.dart';

WeightStatus weightStatusGetter({
  required double weight,
  required int age,
  required Gender gender,
}) {
  WeightStatus weightStatus;
  if (gender == Gender.L) {
    switch (age) {
      case 0:
        if (weight < 2.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 2.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 3.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 1:
        if (weight < 2.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 3.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 5.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 2:
        if (weight < 3.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 4.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 6.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 3:
        if (weight < 4.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 4.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 7.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 4:
        if (weight < 4.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 5.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 7.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 5:
        if (weight < 5.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 5.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 8.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 6:
        if (weight < 5.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 8.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 7:
        if (weight < 5.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 9.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 8:
        if (weight < 6.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 9.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 9:
        if (weight < 6.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 9.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 10:
        if (weight < 6.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 10.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 11:
        if (weight < 6.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 10.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 12:
        if (weight < 6.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 10.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 13:
        if (weight < 7.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 14:
        if (weight < 7.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 15:
        if (weight < 7.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 16:
        if (weight < 7.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.7) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 17:
        if (weight < 7.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 18:
        if (weight < 7.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 19:
        if (weight < 8.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 20:
        if (weight < 8.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.7) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 21:
        if (weight < 8.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 22:
        if (weight < 8.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 23:
        if (weight < 8.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 24:
        if (weight < 8.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 25:
        if (weight < 8.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 26:
        if (weight < 8.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 27:
        if (weight < 9.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 28:
        if (weight < 9.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 29:
        if (weight < 9.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 30:
        if (weight < 9.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 31:
        if (weight < 9.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 32:
        if (weight < 9.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 33:
        if (weight < 9.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 34:
        if (weight < 9.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 35:
        if (weight < 9.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 36:
        if (weight < 10.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 37:
        if (weight < 10.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 38:
        if (weight < 10.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 39:
        if (weight < 10.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 40:
        if (weight < 10.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 41:
        if (weight < 10.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 42:
        if (weight < 10.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 43:
        if (weight < 10.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 44:
        if (weight < 10.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 45:
        if (weight < 10.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 46:
        if (weight < 11.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 47:
        if (weight < 11.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 48:
        if (weight < 11.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 49:
        if (weight < 11.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 50:
        if (weight < 11.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 51:
        if (weight < 11.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 52:
        if (weight < 11.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 53:
        if (weight < 11.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 54:
        if (weight < 11.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 55:
        if (weight < 11.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 56:
        if (weight < 12.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 57:
        if (weight < 12.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 58:
        if (weight < 12.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 59:
        if (weight < 12.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 60:
        if (weight < 12.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 14.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 21.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      default:
        return WeightStatus.normal;
    }
  } else {
    switch (age) {
      case 0:
        if (weight < 2.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 2.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 3.7) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 1:
        if (weight < 2.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 3.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 4.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 2:
        if (weight < 3.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 3.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 5.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 3:
        if (weight < 4.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 4.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 6.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 4:
        if (weight < 4.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 4.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 7.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 5:
        if (weight < 4.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 5.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 7.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 6:
        if (weight < 5.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 5.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 8.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 7:
        if (weight < 5.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 5.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 8.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 8:
        if (weight < 5.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 9.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 9:
        if (weight < 5.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 9.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 10:
        if (weight < 5.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 9.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 11:
        if (weight < 6.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 9.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 12:
        if (weight < 6.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 6.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 10.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 13:
        if (weight < 6.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 10.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 14:
        if (weight < 6.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 10.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 15:
        if (weight < 6.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 10.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 16:
        if (weight < 6.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 17:
        if (weight < 7.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 7.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 18:
        if (weight < 7.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 19:
        if (weight < 7.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 11.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 20:
        if (weight < 7.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 21:
        if (weight < 7.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 22:
        if (weight < 7.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 23:
        if (weight < 7.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 12.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 24:
        if (weight < 8.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 8.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 25:
        if (weight < 8.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 26:
        if (weight < 8.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 27:
        if (weight < 8.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 13.7) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 28:
        if (weight < 8.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 29:
        if (weight < 8.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 30:
        if (weight < 8.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 9.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 31:
        if (weight < 9.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.7) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 32:
        if (weight < 9.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 14.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 33:
        if (weight < 9.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 34:
        if (weight < 9.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 35:
        if (weight < 9.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 36:
        if (weight < 9.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 15.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 37:
        if (weight < 9.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 10.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 38:
        if (weight < 9.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 39:
        if (weight < 9.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 40:
        if (weight < 10.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.7) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 41:
        if (weight < 10.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 16.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 42:
        if (weight < 10.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 43:
        if (weight < 10.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 44:
        if (weight < 10.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 45:
        if (weight < 10.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 11.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 17.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 46:
        if (weight < 10.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.0) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 47:
        if (weight < 10.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 48:
        if (weight < 10.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 49:
        if (weight < 11.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 18.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 50:
        if (weight < 11.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.0) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 51:
        if (weight < 11.2) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 52:
        if (weight < 11.3) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.7) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.4) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 53:
        if (weight < 11.4) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.8) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.7) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 54:
        if (weight < 11.5) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 12.9) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 19.9) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 55:
        if (weight < 11.6) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.1) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.1) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 56:
        if (weight < 11.7) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.2) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.3) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 57:
        if (weight < 11.8) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.3) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.6) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 58:
        if (weight < 11.9) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.4) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.5) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 59:
        if (weight < 12.0) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.5) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 20.8) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      case 60:
        if (weight < 12.1) {
          weightStatus = WeightStatus.severlyUnderweight;
        } else if (weight <= 13.6) {
          weightStatus = WeightStatus.underweight;
        } else if (weight <= 21.2) {
          weightStatus = WeightStatus.normal;
        } else {
          weightStatus = WeightStatus.overweight;
        }
        break;
      default:
        return WeightStatus.normal;
    }
  }
  return weightStatus;
}
