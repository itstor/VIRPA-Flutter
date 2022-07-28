enum WeightStatus {
  severlyUnderweight,
  underweight,
  normal,
  overweight;

  String get displayName {
    switch (this) {
      case WeightStatus.severlyUnderweight:
        return "Severly Underweight";
      case WeightStatus.underweight:
        return "Underweight";
      case WeightStatus.normal:
        return "Normal";
      case WeightStatus.overweight:
        return "Overweight";
    }
  }
}
