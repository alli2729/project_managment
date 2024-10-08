import 'package:flutter/material.dart';
//
import '../../models/post.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.post,
    required this.onLike,
    required this.onComments,
  });

  final Post post;
  final void Function() onLike;
  final void Function() onComments;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _image(),
        _buttons(),
        _description(),
        _comments(),
      ],
    );
  }

  Widget _image() {
    return Image.asset(
      post.photoUrl,
    );
  }

  Widget _description() {
    return Text(post.description);
  }

  Widget _buttons() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.heart_broken),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.comment),
        ),
      ],
    );
  }

  Widget _comments() => const Text('n* comments ....');
}
