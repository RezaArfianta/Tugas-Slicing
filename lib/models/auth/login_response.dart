class LoginResponseModel {
  LoginResponseModel({
    required this.accessToken,
    required this.tokenType,
    required this.nik,
  });

  final String accessToken;
  final String tokenType;
  final String nik;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        nik: json['nik'],
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'token_type': tokenType,
        'nik': nik,
      };
}
