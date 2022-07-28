class FrontDetectionModel {
  double? value;
  double? tinggi;
  String? imageUrl;

  FrontDetectionModel({
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

  factory FrontDetectionModel.fromJson(Map<String, dynamic> json) {
    return FrontDetectionModel(
      value: json['b'],
      tinggi: json['t'],
      imageUrl: json['result'],
    );
  }
}
