import 'package:flutter/material.dart';

import '../models/user.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.user, required this.onTap});

  final User user;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) => _tile();

  // Widgets _________________________________________________________________

  Widget _tile() {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
        ),
        child: Row(
          children: [
            _avatar(),
            const SizedBox(width: 14),
            _name(),
            const Spacer(),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }

  Widget _avatar() {
    return const CircleAvatar(
      backgroundColor: Colors.blue,
      child: Icon(Icons.person, color: Colors.white),
    );
  }

  Widget _name() {
    return Text(
      user.name,
      style: const TextStyle(fontSize: 20),
    );
  }

  Widget _viewButton() {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
        child: const Text(
          'View Projects >',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
