class SideDetectionModel {
  double? value;
  double? tinggi;
  String? imageUrl;

  SideDetectionModel({
    this.value,
    this.tinggi,
    this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'tinggi': tinggi,
      'imageUrl': imageUrl,
    };
  }

  factory SideDetectionModel.fromJson(Map<String, dynamic> json) {
    return SideDetectionModel(
      value: json['a'],
      tinggi: json['t'],
      imageUrl: json['result'],
    );
  }
}
