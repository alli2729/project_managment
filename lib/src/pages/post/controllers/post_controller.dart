import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/models/post_model.dart';

class PostController extends GetxController {
  final controller = TextEditingController();
  final PostModel post = Get.arguments ?? '';

  // todo : add these functions ->
  void onLike() {}
  void addComment() {}
  void removeComment() {}
}
