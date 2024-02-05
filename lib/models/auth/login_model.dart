// class LoginModel {
//   String? username;
//   String? password;

//   LoginModel({required this.username, required this.password});

//   LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(username: json['username'], password: json['password']);

// }
class LoginRequestModel {
  LoginRequestModel({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      LoginRequestModel(
        email: json['email'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
