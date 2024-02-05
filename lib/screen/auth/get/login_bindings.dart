import 'package:dio/dio.dart';
import 'package:firsttest/repository/repository.dart';
import 'package:firsttest/screen/auth/get/login_controller.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthRepository(dio: Get.find<Dio>()));

    Get.put(LoginController(authRepository: Get.find<AuthRepository>()));
  }
}
