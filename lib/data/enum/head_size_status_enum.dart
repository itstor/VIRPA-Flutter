enum HeadSizeStatus {
  underNormal,
  normal,
  aboveNormal,
  nullValue;

  String get displayName {
    switch (this) {
      case HeadSizeStatus.underNormal:
        return "Under Normal";
      case HeadSizeStatus.normal:
        return "Normal";
      case HeadSizeStatus.aboveNormal:
        return "Above Normal";
      case nullValue:
        return "null";
    }
  }
}
