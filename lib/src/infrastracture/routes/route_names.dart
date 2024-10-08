import 'route_path.dart';

class RouteNames {
  static const String loading = RoutePath.loading;
  static const String users = RoutePath.users;
  static const String projects = '${RoutePath.users}${RoutePath.projects}';
  static const String login = RoutePath.login;
  static const String register = RoutePath.register;
  static const String home = RoutePath.home;
  static const String post = '${RoutePath.home}${RoutePath.post}';
  // static const String editTodo = '${RoutePath.todo}${RoutePath.editTodo}';
}
