import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../../users/models/user.dart';
import '../models/project.dart';
import '../../../infrastracture/common/data_base.dart';

class ProjectController extends GetxController {
  // Variable _________________________________________________________________
  int idMaker = 1;
  List<Project> projects = DataBase.projects;
  // reciving arguments from home page
  final User user = Get.arguments ?? '';

  // Methods __________________________________________________________________
  bool isJoined(int prjId, int usrId) {
    int index = projects.indexWhere((element) => element.id == prjId);
    if (projects[index].usersIds.contains(usrId)) return true;

    return false;
  }

  void join(int prjId, int usrId) {
    int index = projects.indexWhere((prj) => prj.id == prjId);

    List<int> newUserIds = projects[index].usersIds;
    newUserIds.add(usrId);
    Project newPrj = projects[index].copyWith(usersIds: newUserIds);

    projects[index] = newPrj;

    showJoinSnackbar(usrId, projects[index].title);
  }

  void remove(int prjId, int usrId) {
    int index = projects.indexWhere((prj) => prj.id == prjId);

    List<int> newUserIds = projects[index].usersIds;
    newUserIds.remove(usrId);
    Project newPrj = projects[index].copyWith(usersIds: newUserIds);

    projects[index] = newPrj;

    showRemoveSnackbar(usrId, projects[index].title);
  }

  void goBack() {
    Get.back();
  }

  void showJoinSnackbar(int userId, String title) {
    Get.showSnackbar(
      GetSnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.green.shade200,
        messageText: Text(
          'User with ID: "$userId" Added to $title',
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  void showRemoveSnackbar(int userId, String title) {
    Get.showSnackbar(
      GetSnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red.shade300,
        messageText: Text(
          'User with ID: "$userId" Removed from $title',
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
