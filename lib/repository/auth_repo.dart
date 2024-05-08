part of 'repository.dart';

class AuthRepository {
  final Dio _client;
  AuthRepository({required Dio dio}) : _client = dio;
  late SharedPreferences prefs;

  Future<bool> login(LoginRequestModel requestModel) async {
    final response = await _client.post(Endpoint.login, data: requestModel);
    final model = LoginResponseModel.fromJson(response.data);
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (response.statusCode == 200) {
      await prefs.setString('accessToken', 'Bearer : ${model.accessToken}');
      print(prefs.getString('accessToken'));
      return true;
    } else {
      return false;
    }
  }
}
