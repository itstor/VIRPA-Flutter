enum Gender {
  L,
  P;

  String get displayName {
    switch (this) {
      case Gender.L:
        return "Laki-laki";
      case Gender.P:
        return "Perempuan";
    }
  }
}
