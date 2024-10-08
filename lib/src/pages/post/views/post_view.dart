import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import 'widgets/comment_widget.dart';
import '../controllers/post_controller.dart';

class PostView extends GetView<PostController> {
  const PostView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.withOpacity(.1),
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('Post'),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ColoredBox(
          color: Colors.white,
          child: Column(
            children: [
              _image(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buttons(),
                    const SizedBox(height: 10),
                    _description(),
                    const SizedBox(height: 20),
                    _field(),
                    const SizedBox(height: 10),
                    (controller.post.comments.isNotEmpty)
                        ? _comments(context)
                        : const Center(child: Text('-- No Comment --')),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  //* Widgets _________________________________________________________________

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
    return Text(
      controller.post.description,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }

  Widget _buttons() {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(Icons.thumb_up_outlined),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {},
          child: const Icon(Icons.comment_outlined),
        ),
      ],
    );
  }

  Widget _comments(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height - 500,
      child: ListView.builder(
        itemCount: controller.post.comments.length,
        itemBuilder: (context, index) => CommentWidget(
          comment: controller.post.comments[index],
          onRemove: () {},
        ),
      ),
    );
  }

  Widget _field() {
    return TextField(
      controller: controller.controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send),
        ),
      ),
    );
  }
}
