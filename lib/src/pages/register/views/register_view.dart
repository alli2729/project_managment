import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

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
      title: const Text('Register'),
      centerTitle: true,
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _username(),
            const SizedBox(height: 10),
            _password(),
            const SizedBox(height: 10),
            _reapeatPassword(),
            const SizedBox(height: 10),
            _button(),
          ],
        ),
      ),
    );
  }

  Widget _username() {
    return TextFormField(
      controller: controller.userController,
      validator: controller.validate,
      decoration: InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _password() {
    return TextFormField(
      controller: controller.passController,
      validator: controller.validate,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _reapeatPassword() {
    return TextFormField(
      controller: controller.reapeatController,
      validator: controller.validate,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Reapet Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _button() {
    return InkWell(
      onTap: controller.register,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          'REGISTER',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
