import 'package:get/get.dart';
import '../controllers/posts_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => HomeController());
}
