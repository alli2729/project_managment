import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    super.key,
    required this.title,
    required this.isJoined,
    required this.onJoin,
  });

  final String title;
  final bool isJoined;
  final void Function() onJoin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _texts(),
        (isJoined) ? _joinedCheck() : _joinButton(),
      ],
    );
  }

  Widget _texts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        const Text("Description"),
      ],
    );
  }

  Widget _joinedCheck() {
    return const Row(
      children: [
        Text(
          'Already Joined',
          style: TextStyle(color: Colors.green),
        ),
        SizedBox(width: 10),
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      ],
    );
  }

  Widget _joinButton() {
    return InkWell(
      onTap: onJoin,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
        child: const Text(
          'Join',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
