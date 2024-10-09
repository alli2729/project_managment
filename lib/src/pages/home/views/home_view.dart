import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../controllers/home_controller.dart';
import 'widgets/post_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  //* Widgets __________________________________________________________________
  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: const Text('Posts'),
      leading: IconButton(
        onPressed: controller.logout,
        icon: const Icon(Icons.logout),
      ),
    );
  }

  Widget _body() {
    return ListView.separated(
      itemCount: controller.posts.length,
      itemBuilder: (_, index) {
        int postId = controller.posts[index].id;
        return Obx(
          () => PostWidget(
            post: controller.posts[index],
            onLike: () => controller.onLike(postId),
            onView: () => controller.onView(postId),
            isLiked: controller.isLiked(postId).value,
            commentCount: controller.commentCount(postId),
          ),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 25),
    );
  }
}
