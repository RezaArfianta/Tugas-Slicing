import 'package:firsttest/repository/repository.dart';
import 'package:firsttest/screen/home/get/homecontroller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
