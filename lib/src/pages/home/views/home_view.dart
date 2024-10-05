// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../controllers/home_controller.dart';
import '../widgets/user_tile.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  // Widgets __________________________________________________________________

  AppBar _appBar() {
    return AppBar(
      title: const Text('Users'),
      centerTitle: true,
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
        itemCount: controller.users.length,
        itemBuilder: (_, index) => UserTile(
          user: controller.users[index],
          onTap: () => controller.onPressed(controller.users[index]),
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
      ),
    );
  }
}
