part of 'repository.dart';

class AuthRepository {
  final Dio _client;
  AuthRepository({required Dio dio}) : _client = dio;

  Future<bool> login(LoginRequestModel requestModel) async {
    final response = await _client.post(Endpoint.login, data: requestModel);
    final model = LoginResponseModel.fromJson(response.data);

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
