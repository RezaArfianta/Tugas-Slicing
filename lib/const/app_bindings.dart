import 'dart:developer' as developer;

// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:firsttest/const/endpoint.dart';
import 'package:get/get.dart' hide FormData;
import '../screen/auth/loginpage.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    const baseUrl = String.fromEnvironment('BASE_URL');
    Get.put(
      Dio(BaseOptions(
        baseUrl: baseUrl,
        sendTimeout: const Duration(minutes: 10).inMilliseconds,
        connectTimeout: const Duration(minutes: 10).inMilliseconds,
        receiveTimeout: const Duration(minutes: 10).inMilliseconds,
      ))
        ..interceptors.addAll(
          [
            DioLoggingInterceptor(
              compact: true,
              level: Level.body,
              logPrint: (value) {
                if (value is FormData) {
                  final fields = value.fields;
                  final files = value.files;

                  final logFields = fields.map((e) => e.toString()).join(',');
                  final logFiles = files.map((e) => e.toString()).join(',');
                  developer.log('$logFields; $logFiles');
                } else {
                  developer.log(value.toString());
                }
              },
            ),
            InterceptorsWrapper(
              onError: (error, handler) {
                final isLogin = error.requestOptions.uri
                    .toString()
                    .endsWith(Endpoint.login);
                if (error.response?.statusCode == 401) {
                  if (isLogin) {
                    handler.next(error);
                  } else {
                    Get.offAllNamed(LoginPage.routeName);
                  }
                } else {
                  handler.next(error);
                }
              },
            )
          ],
        ),
      permanent: true,
    );
    // Get.put<Connectivity>(Connectivity(), permanent: true);
    // Get.put<FirebaseRemoteConfig>(FirebaseRemoteConfig.instance,
    //         permanent: true)
    //     .setConfigSettings(RemoteConfigSettings(
    //   fetchTimeout: const Duration(minutes: 1),
    //   minimumFetchInterval: const Duration(hours: 1),
    // ));
  }
}
