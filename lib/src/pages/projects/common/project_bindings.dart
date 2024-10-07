import 'package:get/get.dart';
//
import '../controllers/project_controller.dart';

class ProjectBindings extends Bindings {
  
  // methods
  @override
  void dependencies() => Get.lazyPut(() => ProjectController());
}
