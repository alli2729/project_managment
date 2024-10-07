import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({
    super.key,
    required this.title,
    required this.isJoined,
    required this.onJoin,
    required this.onDelete,
  });

  final String title;
  final bool isJoined;
  final void Function() onJoin;
  final void Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return (isJoined) ? _joinedPrj() : _notJoindPrj();
  }

  // Widgets __________________________________________________________________

  Widget _joinedPrj() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.green[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _texts(),
          _deleteButton(),
        ],
      ),
    );
  }

  Widget _notJoindPrj() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[300],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _texts(),
          _joinButton(),
        ],
      ),
    );
  }

  Widget _texts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const Text('description', style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _joinButton() {
    return InkWell(
      onTap: onJoin,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.blue,
        ),
        child: const Text(
          'Join',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _deleteButton() {
    return InkWell(
      onTap: onDelete,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.red.shade300,
        ),
        child: const Text(
          'Delete',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
