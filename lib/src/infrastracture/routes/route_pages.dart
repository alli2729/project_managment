import 'package:get/get.dart';
import 'route_path.dart';
import '../../pages/posts/common/posts_bindings.dart';
import '../../pages/posts/views/posts_view.dart';
import '../../pages/login/common/login_bindings.dart';
import '../../pages/login/view/login_view.dart';
import '../../pages/register/common/register_bindings.dart';
import '../../pages/register/views/register_view.dart';
import '../../pages/splash/common/splash_bindigns.dart';
import '../../pages/splash/view/splash_view.dart';
import '../../pages/projects/common/project_bindings.dart';
import '../../pages/projects/views/project_view.dart';
import '../../pages/users/common/home_bindings.dart';
import '../../pages/users/views/home_view.dart';

class RoutePages {
  static List<GetPage> pages = [
    // loading page (Splash)
    GetPage(
      name: RoutePath.loading,
      page: () => const SplashView(),
      binding: SplashBindigns(),
    ),
    // Login Page
    GetPage(
      name: RoutePath.login,
      page: () => const LoginView(),
      binding: LoginBindings(),
    ),
    // Register Page
    GetPage(
      name: RoutePath.register,
      page: () => const RegisterView(),
      binding: RegisterBindings(),
    ),
    // Home Page
    GetPage(
      name: RoutePath.home,
      page: () => const HomeView(),
      binding: HomeBindings(),
    ),
    // Users Page
    GetPage(
      name: RoutePath.users,
      page: () => const UserListView(),
      binding: UserListBindings(),
      children: [
        // Projects Page
        GetPage(
          name: RoutePath.projects,
          page: () => const ProjectView(),
          binding: ProjectBindings(),
        ),
      ],
    )
  ];
}
