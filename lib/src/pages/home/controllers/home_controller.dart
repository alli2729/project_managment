import 'package:get/get.dart';
//
import '../../../infrastracture/routes/route_names.dart';
import '../models/post_model.dart';
import '../../../infrastracture/common/data_base.dart';

class HomeController extends GetxController {
  // final String username = Get.arguments ?? '';
  final String username = 'alli2729';
  List<PostModel> posts = DataBase.posts;

  void onLike(int postId) {
    int index = posts.indexWhere((post) => post.id == postId);

    (posts[index].likedUsernames.contains(username))
        ? remove(index)
        : like(index);
  }

  void like(int index) {
    PostModel newPost = posts[index];
    List<String> newUsernames = newPost.likedUsernames;
    newUsernames.add(username);
    newPost = newPost.copyWith(likedUsernames: newUsernames);
    posts[index] = newPost;
  }

  void remove(int index) {
    PostModel newPost = posts[index];
    List<String> newUsernames = newPost.likedUsernames;
    newUsernames.remove(username);
    newPost = newPost.copyWith(likedUsernames: newUsernames);
    posts[index] = newPost;
  }

  RxBool isLiked(int postId) {
    int index = posts.indexWhere((post) => post.id == postId);
    return posts[index].likedUsernames.contains(username).obs;
  }

  Future<void> onView(int postId) async {
    final int index = posts.indexWhere((post) => post.id == postId);
    Get.toNamed(RouteNames.post, arguments: [posts[index], username]);
  }
}
