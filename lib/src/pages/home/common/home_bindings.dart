import 'package:get/get.dart';
//
import '../controllers/home_controller.dart';

class UserListBindings extends Bindings {
  @override
  void dependencies() => Get.lazyPut(() => UserListController());
}
