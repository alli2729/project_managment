import 'package:flutter/material.dart';

import '../../../../infrastracture/common/models/comment.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
    required this.comment,
    required this.onRemove,
  });

  final Comment comment;
  final void Function() onRemove;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            comment.text,
            style: const TextStyle(fontSize: 16),
          ),
          IconButton(
            onPressed: onRemove,
            icon: const Icon(Icons.remove_circle),
          )
        ],
      ),
    );
  }
}
