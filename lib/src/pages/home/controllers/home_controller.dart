import 'package:get/get.dart';
//
import '../../../infrastracture/routes/route_names.dart';
import '../models/post_model.dart';
import '../../../infrastracture/common/data_base.dart';

class HomeController extends GetxController {
  List<PostModel> posts = DataBase.posts;

  void onLike() {}

  Future<void> onComments(int postId) async {
    final int index = posts.indexWhere((post) => post.id == postId);
    Get.toNamed(RouteNames.post, arguments: posts[index]);
  }
}
