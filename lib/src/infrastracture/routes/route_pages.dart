import 'package:get/get.dart';
import 'package:prj/src/pages/login/common/login_bindings.dart';
import 'package:prj/src/pages/register/views/register_view.dart';
import 'package:prj/src/pages/splash/common/splash_bindigns.dart';
import 'package:prj/src/pages/splash/view/splash_view.dart';
import '../../pages/login/view/login_view.dart';
import '../../pages/register/common/register_bindings.dart';
import 'route_path.dart';
import '../../pages/projects/common/project_bindings.dart';
import '../../pages/projects/views/project_view.dart';
import '../../pages/home/common/home_bindings.dart';
import '../../pages/home/views/home_view.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: RoutePath.loading,
      page: () => const SplashView(),
      binding: SplashBindigns(),
    ),
    GetPage(
      name: RoutePath.login,
      page: () => const LoginView(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: RoutePath.register,
      page: () => const RegisterView(),
      binding: RegisterBindings(),
    ),
    GetPage(
      name: RoutePath.home,
      page: () => const HomeView(),
      binding: HomeBindings(),
      children: [
        GetPage(
          name: RoutePath.projects,
          page: () => const ProjectView(),
          binding: ProjectBindings(),
        ),
      ],
    )
  ];
}
