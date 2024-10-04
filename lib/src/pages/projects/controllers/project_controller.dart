import 'package:get/get.dart';
//
import '../common/project_bindings.dart';
import '../models/project.dart';

class ProjectController extends GetxController {
  // Variable
  int idMaker = 1;
  List<Project> projects = ProjectBindings.projects;

  // Methods __________________________________________________________________
  bool isJoined(int prjId, int usrId) {
    int index = projects.indexWhere((element) => element.id == prjId);
    if (projects[index].usersIds.contains(usrId)) {
      return true;
    }
    return false;
  }

  void join(int prjId, int usrId) {
    int index = projects.indexWhere((prj) => prj.id == prjId);

    List<int> newUserIds = projects[index].usersIds;
    newUserIds.add(usrId);
    Project newPrj = projects[index].copyWith(usersIds: newUserIds);

    projects[index] = newPrj;
  }

  void addProject() {
    projects.add(Project(id: idMaker, title: 'title $idMaker', usersIds: []));
    ++idMaker;
  }

  void goBack() {
    Get.back();
  }
}
