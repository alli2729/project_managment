import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../../models/post_model.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.post,
    required this.onLike,
    required this.onView,
    required this.isLiked,
    required this.commentCount,
  });

  final PostModel post;
  final void Function() onLike;
  final void Function() onView;
  final bool isLiked;
  final RxInt commentCount;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              const SizedBox(height: 10),
              _comments(),
            ],
          ),
        ),
      ],
    );
  }

  //* Widgets _________________________________________________________________

  Widget _image() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Image.asset(
        post.photoUrl,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _description() {
    return Text(
      post.description,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }

  Widget _buttons() {
    return Row(
      children: [
        InkWell(
          onTap: onLike,
          child: (isLiked)
              ? const Icon(Icons.heart_broken, color: Colors.blue)
              : const Icon(Icons.heart_broken_outlined),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: onView,
          child: const Icon(Icons.comment_outlined),
        ),
      ],
    );
  }

  Widget _comments() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Obx(
        () => InkWell(
          onTap: onView,
          child: Text(
            '${commentCount.value} comments ....',
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
      ),
    );
  }
}
