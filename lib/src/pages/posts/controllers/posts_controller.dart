import 'package:get/get.dart';
//
import '../models/post.dart';

class HomeController extends GetxController {
  List<Post> posts = [
    Post(
      id: 1,
      photoUrl: 'lib/assets/images/river.jpg',
      description: 'description',
    ),
    Post(
      id: 2,
      photoUrl: 'lib/assets/images/river.jpg',
      description: 'description',
    ),
    Post(
      id: 3,
      photoUrl: 'lib/assets/images/river.jpg',
      description: 'description',
    ),
  ];

  void onLike() {}
  void onComments() {}
}
