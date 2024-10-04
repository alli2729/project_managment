import 'package:get/get.dart';
//
import '../controllers/project_controller.dart';
import '../models/project.dart';

class ProjectBindings extends Bindings {
  // variables
  static List<Project> projects = RxList.generate(
    4,
    (index) =>
        Project(id: index + 1, title: 'Project ${index + 1}', usersIds: []),
  );

  // methods
  @override
  void dependencies() => Get.lazyPut(() => ProjectController());
}
