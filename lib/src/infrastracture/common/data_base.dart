import 'package:get/get.dart';
import 'package:project_managment/src/infrastracture/common/models/comment.dart';

import '../../pages/projects/models/project.dart';
import '../../pages/home/models/post_model.dart';

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

  static List<PostModel> posts = [
    PostModel(
      id: 1,
      photoUrl: 'lib/assets/images/river1.jpg',
      description:
          'very long fucking description very long fucking description very long fucking description very long fucking description',
      comments: [
        Comment(sendetId: 1, text: 'text'),
        Comment(sendetId: 1, text: 'text'),
        Comment(sendetId: 1, text: 'text'),
        Comment(sendetId: 1, text: 'text'),
        Comment(sendetId: 1, text: 'text'),
      ],
    ),
    PostModel(
      id: 2,
      photoUrl: 'lib/assets/images/river2.jpg',
      description: 'description',
      comments: [],
    ),
    PostModel(
      id: 3,
      photoUrl: 'lib/assets/images/river3.jpg',
      description: 'description',
      comments: [],
    ),
  ];
}
