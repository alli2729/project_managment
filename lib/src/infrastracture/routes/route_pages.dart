import 'package:get/get.dart';
import 'route_path.dart';
import '../../pages/projects/common/project_bindings.dart';
import '../../pages/projects/views/project_view.dart';
import '../../pages/home/common/home_bindings.dart';
import '../../pages/home/views/home_view.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: RoutePath.home,
      page: () => const HomeView(),
      binding: HomeBindings(),
      children: [
        GetPage(
          name: RoutePath.projects,
          page: () => ProjectView(),
          binding: ProjectBindings(),
        ),
      ],
    )
  ];
}
