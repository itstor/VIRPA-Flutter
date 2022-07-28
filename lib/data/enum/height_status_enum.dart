enum HeightStatus {
  severlyStunted,
  stunted,
  normal,
  tinggi;

  String get displayName {
    switch (this) {
      case HeightStatus.severlyStunted:
        return "Severly Stunted";
      case HeightStatus.stunted:
        return "Stunted";
      case HeightStatus.normal:
        return "Normal";
      case HeightStatus.tinggi:
        return "Tinggi";
    }
  }
}
