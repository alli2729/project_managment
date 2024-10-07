import 'package:flutter/material.dart';
import 'package:get/get.dart';
//
import '../controllers/project_controller.dart';
import '../widgets/project_tile.dart';

class ProjectView extends GetView<ProjectController> {
  const ProjectView({super.key});

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
      title: Text('${controller.user.name} Projects'),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView.separated(
        itemCount: controller.projects.length,
        itemBuilder: (_, index) => Obx(
          () => ProjectTile(
            title: controller.projects[index].title,
            isJoined: controller.isJoined(
                controller.projects[index].id, controller.user.id),
            onJoin: () => controller.join(
                controller.projects[index].id, controller.user.id),
            onDelete: () => controller.remove(
                controller.projects[index].id, controller.user.id),
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 10),
      ),
    );
  }
}
