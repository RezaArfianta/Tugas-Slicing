class PertumbuhanModel {
  PertumbuhanModel({
    required this.name,
    required this.usia,
  });

  final String name;
  final String usia;

  factory PertumbuhanModel.fromJson(Map<String, dynamic> json) =>
      PertumbuhanModel(
        name: json['name'],
        usia: json['usia'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'usia': usia,
      };
}
