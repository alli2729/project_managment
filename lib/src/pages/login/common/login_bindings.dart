import 'package:get/get.dart';
import 'package:prj/src/pages/login/controller/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
