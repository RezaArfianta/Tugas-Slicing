part of 'repository.dart';

class TernakRepo {
  final Dio _client;

  TernakRepo({required Dio dio}) : _client = dio;
  late SharedPreferences prefs;

  Future<List<TernakRequestModel>> getDataTernak() async {
    final headers = await prefs.get('accessToken');
    final params = <String, dynamic>{
      'offset': 0,
      'limit': 20,
    };

    final response = await _client.post(Endpoint.ternak,
        options: Options(headers: headers), queryParameters: params);

    return [];
  }
}
