import 'package:flutter/material.dart';

import '../models/user.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.user, required this.onTap});

  final User user;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _name(),
        _viewButton(),
      ],
    );
  }

  // Widgets _________________________________________________________________

  Widget _name() {
    return Text(
      user.name,
      style: const TextStyle(fontSize: 18),
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
