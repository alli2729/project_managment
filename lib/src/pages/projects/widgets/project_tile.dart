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
          _leftColumn(),
          _leftRow(),
        ],
      ),
    );
  }

  Widget _leftRow() {
    return const Row(
      children: [
        Text('Joined', style: TextStyle(fontSize: 18)),
        Icon(Icons.check),
      ],
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
          _leftColumn(),
          _rightColumn(),
        ],
      ),
    );
  }

  Widget _leftColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const Text('description', style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _rightColumn() {
    return Column(
      children: [
        _joinButton(),
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
}
