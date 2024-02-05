import 'package:firsttest/models/auth/login_model.dart';
import 'package:firsttest/repository/repository.dart';
import 'package:firsttest/screen/screen_import.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthRepository _authRepository;
  LoginController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  final usernameText = TextEditingController();
  final passwordText = TextEditingController();
  final globalKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  bool get isLoadingCheck => isLoading.value;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> login() async {
    if (globalKey.currentState!.validate()) {
      return;
    }

    isLoading.value = true;
    final request = LoginRequestModel(
        email: usernameText.text, password: passwordText.text);

    try {
      final isLoginSuccess = await _authRepository.login(request);
      if (isLoginSuccess) {
        Get.offAllNamed(HomePage() as String);
      } else {
        Get.showSnackbar(GetSnackBar(
          message: "Login Gagal",
          duration: Duration(seconds: 2),
          snackPosition: SnackPosition.TOP,
        ));
      }
    } catch (e) {
      isLoading.value = false;
      Get.showSnackbar(const GetSnackBar(
        message: "Login Gagal",
        duration: Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
      ));
    }
    isLoading.value = false;
  }
}
