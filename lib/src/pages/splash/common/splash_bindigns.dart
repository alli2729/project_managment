import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class SplashBindigns extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => SplashController());
}
