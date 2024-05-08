import 'package:firsttest/screen/auth/get/login_bindings.dart';
import 'package:firsttest/screen/auth/loginpage.dart';
import 'package:firsttest/screen/screen_import.dart';
import 'package:get/get.dart';

final appRoutes = [
  GetPage(
      name: LoginPage.routeName,
      page: () => LoginPage(),
      binding: LoginBindings()),
  GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      binding: LoginBindings())
];
