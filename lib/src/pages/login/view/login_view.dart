import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

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
      title: const Text('Login'),
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
            _loginButton(),
            const SizedBox(height: 24),
            _registerButton(),
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

  Widget _loginButton() {
    return InkWell(
      onTap: controller.login,
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
          'LOGIN',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _registerButton() {
    return Row(
      children: [
        const Text('No Account? '),
        InkWell(
          onTap: controller.register,
          child: const Text(
            'Register',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
