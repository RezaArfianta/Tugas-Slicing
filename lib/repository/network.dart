import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NetworkUtils {
  static Future<bool> get isConnected async {
    final connectivity = Get.find<Connectivity>();
    ConnectivityResult? result;

    try {
      // result = await connectivity.checkConnectivity();
    } catch (error) {
      return false;
    }

    return result != ConnectivityResult.none;
  }
}
