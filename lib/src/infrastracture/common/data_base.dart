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

  static RxList<PostModel> posts = [
    PostModel(
      id: 1,
      photoUrl: 'lib/assets/images/river1.jpg',
      description:
          'very long fucking description very long fucking description very long fucking description very long fucking description',
      comments: RxList([
        Comment(senderUsername: 'alli2729', text: '1'),
        Comment(senderUsername: 'alli2729', text: '2'),
        Comment(senderUsername: 'alli2729', text: '3'),
        Comment(senderUsername: 'alli2729', text: '4'),
        Comment(senderUsername: 'alli2729', text: '5'),
      ]),
      likedUsernames: ['alli2729'],
    ),
    PostModel(
      id: 2,
      photoUrl: 'lib/assets/images/river2.jpg',
      description: 'description',
      comments: RxList([]),
      likedUsernames: [],
    ),
    PostModel(
      id: 3,
      photoUrl: 'lib/assets/images/river3.jpg',
      description: 'description',
      comments: [],
      likedUsernames: [],
    ),
  ].obs;
}
