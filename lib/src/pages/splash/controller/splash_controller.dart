import 'package:get/get.dart';
import '../../../infrastracture/routes/route_path.dart';

class SplashController extends GetxController {
  void wait() async {
    await Future.delayed(const Duration(seconds: 3));
    await Get.offNamed(RoutePath.login);
  }
}
