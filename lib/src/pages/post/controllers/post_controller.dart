import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../../../infrastracture/common/data_base.dart';
import '../../../infrastracture/common/models/comment.dart';
import '../../home/models/post_model.dart';

class PostController extends GetxController {
  PostController() {
    like = isLiked();
  }

  final controller = TextEditingController();
  PostModel post = Get.arguments[0] ?? '';
  String username = Get.arguments[1] ?? '';
  late RxBool like;

  void onLike() => like.toggle();

  RxBool isLiked() {
    return post.likedUsernames.contains(username).obs;
  }

  void addComment() {
    int postIndex =
        DataBase.posts.indexWhere((post) => post.id == this.post.id);
    DataBase.posts[postIndex].comments.add(
      Comment(
        senderUsername: username,
        text: controller.text,
      ),
    );
    controller.clear();
  }

  void removeComment(int commentIndex) {
    int postIndex =
        DataBase.posts.indexWhere((post) => post.id == this.post.id);
    if (DataBase.posts[postIndex].comments[commentIndex].senderUsername ==
        username) {
      DataBase.posts[postIndex].comments.removeAt(commentIndex);
    } else {
      Get.showSnackbar(GetSnackBar(
        message: 'Cannot remove other users comments !',
        backgroundColor: Colors.red.withOpacity(.2),
        duration: const Duration(seconds: 1),
      ));
    }
  }

  bool isOwnedComment(int commentIndex) {
    int postIndex =
        DataBase.posts.indexWhere((post) => post.id == this.post.id);
    return (DataBase.posts[postIndex].comments[commentIndex].senderUsername ==
        username);
  }

  void back() => Get.back(result: like.value);
}
