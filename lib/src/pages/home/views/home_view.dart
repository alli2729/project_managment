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
      backgroundColor: Colors.orange.withOpacity(.25),
      appBar: _appBar(),
      body: _body(),
    );
  }

  //* Widgets __________________________________________________________________
  AppBar _appBar() {
    return AppBar(
      title: const Text('Posts'),
      centerTitle: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    );
  }

  Widget _body() {
    return ListView.separated(
      itemCount: controller.posts.length,
      itemBuilder: (_, index) => Obx(
        () => PostWidget(
          post: controller.posts[index],
          onLike: () => controller.onLike(controller.posts[index].id),
          onView: () => controller.onView(controller.posts[index].id),
          isLiked: controller.isLiked(controller.posts[index].id).value,
        ),
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 25),
    );
  }
}
