import "dart:math" show pi;

class Utils {
  static int calculateAgeMonth(DateTime date) {
    DateTime now = DateTime.now();
    int age = now.year - date.year;
    int month = now.month - date.month;
    if (month < 0) {
      age--;
    }
    return age * 12 + month;
  }

  static String formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  static String formatDateSql(DateTime date) {
    return "${date.year}-${date.month}-${date.day}";
  }

  static double calculateWeight(double a, double b, double t) {
    double bsa = (pi / 2) * ((a * b) + ((a + b) * t)) * 1.32 * 0.0001;
    return bsa * bsa * 3600 / t;
  }

  static String getFilename(String path) {
    return path.split("/").last;
  }
}
