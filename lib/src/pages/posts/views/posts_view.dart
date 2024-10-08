import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../controllers/posts_controller.dart';
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
      title: const Text('Posts'),
      centerTitle: true,
    );
  }

  Widget _body() {
    return ListView.separated(
      itemCount: controller.posts.length,
      itemBuilder: (context, index) => PostWidget(
        post: controller.posts[index],
        onLike: controller.onLike,
        onComments: controller.onComments,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}
