import 'package:get/get.dart';
//
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
  };

  static RxList<PostModel> posts = [
    PostModel(
      id: 1,
      photoUrl: 'lib/assets/images/river1.jpg',
      description: 'description',
      comments: RxList([]),
      likedUsernames: [],
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
      comments: RxList([]),
      likedUsernames: [],
    ),
  ].obs;
}
