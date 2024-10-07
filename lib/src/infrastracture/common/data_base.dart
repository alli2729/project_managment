import 'package:get/get.dart';

import '../../pages/projects/models/project.dart';

class DataBase {
  static List<Project> projects = RxList.generate(
    4,
    (index) =>
        Project(id: index + 1, title: 'Project ${index + 1}', usersIds: []),
  );

  static Map<String, String> credintials = {
    'alli2729': 'password',
    'shayan_zare': 'shz1360',
  };
}
