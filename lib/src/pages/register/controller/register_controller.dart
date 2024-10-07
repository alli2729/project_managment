import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../infrastracture/common/data_base.dart';

class RegisterController extends GetxController {
  // Variables ________________________________________________________________
  final formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passController = TextEditingController();
  final reapeatController = TextEditingController();

  // Methods __________________________________________________________________
  String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) return 'Required';
      if (value.length < 6) return 'must be longer than 6 characters';
    }
    return null;
  }

  void register() {
    if (formKey.currentState?.validate() ?? false) {
      if (passController.text == reapeatController.text) {
        DataBase.credintials[userController.text] = passController.text;
        List<String> data = [userController.text, passController.text];
        Get.back<List<String>>(result: data);
      } else {
        Get.showSnackbar(
          const GetSnackBar(
            duration: Duration(seconds: 2),
            message: 'Password is not Matching',
          ),
        );
      }
    }
  }
}
