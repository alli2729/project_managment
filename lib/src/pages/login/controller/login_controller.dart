import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../infrastracture/common/data_base.dart';
import '../../../infrastracture/routes/route_path.dart';

class LoginController extends GetxController {
  // Variable __________________________________________________________________
  final userController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Methods __________________________________________________________________
  String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) return 'Required';
    }
    return null;
  }

  void login() {
    if (formKey.currentState?.validate() ?? false) {
      if (DataBase.credintials[userController.text] == passController.text) {
        Get.offNamed(RoutePath.users);
      } else {
        Get.showSnackbar(
          GetSnackBar(
            backgroundColor: Colors.red.shade300,
            message: 'Wrong Creditential',
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Future<void> register() async {
    var result = await Get.toNamed(RoutePath.register);
    if (result != null) {
      userController.text = result[0];
      passController.text = result[1];
    }
  }
}
