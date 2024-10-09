import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'widgets/comment_widget.dart';
import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  const PostView({
    super.key,
  });

  final double padding = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  //* Widgets _________________________________________________________________

  AppBar _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: controller.back,
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      centerTitle: true,
      title: const Text('Post'),
    );
  }

  Widget _body(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _image(),
          const SizedBox(height: 6),
          _likeButton(),
          const SizedBox(height: 10),
          _description(),
          const SizedBox(height: 20),
          _field(),
          const SizedBox(height: 10),
          Expanded(flex: 1, child: _comments(context)),
        ],
      ),
    );
  }

  Widget _image() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Image.asset(
        controller.post.photoUrl,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _description() {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        controller.post.description,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _likeButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Obx(
        () => InkWell(
          onTap: controller.onLike,
          child: (controller.like.value)
              ? const Icon(Icons.heart_broken, color: Colors.blue)
              : const Icon(Icons.heart_broken_outlined),
        ),
      ),
    );
  }

  Widget _comments(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: controller.post.comments.length,
        itemBuilder: (context, index) => CommentWidget(
          comment: controller.post.comments[index],
          onRemove: () => controller.removeComment(index),
          isOwendComment: controller.isOwnedComment(index),
        ),
      ),
    );
  }

  Widget _field() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: TextField(
        controller: controller.controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: controller.addComment,
            icon: const Icon(Icons.send),
          ),
        ),
      ),
    );
  }
}
