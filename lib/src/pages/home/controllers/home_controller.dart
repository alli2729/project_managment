import 'package:get/get.dart';
//
import '../../../infrastracture/routes/route_names.dart';
import '../models/user.dart';

class HomeController extends GetxController {
  // Variable _________________________________________________________________
  List<User> users = List.generate(
    5,
    (index) => User(
      id: index + 1,
      name: 'Name ${index + 1}',
    ),
  );

  // Methods __________________________________________________________________
  Future<void> onPressed(User user) async {
    await Get.toNamed(RouteNames.projects, arguments: user);
  }
}
