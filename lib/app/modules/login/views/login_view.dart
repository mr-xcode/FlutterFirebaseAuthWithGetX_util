import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(label: Text("Email")),
            ),
            Obx(
              () => TextField(
                controller: controller.passwordController,
                obscureText: controller.isPasswordVisible.value,
                decoration: InputDecoration(
                  label: Text("Password"),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.isPasswordVisible.value =
                          !controller.isPasswordVisible.value;
                      controller.update();
                    },
                    child: Icon(
                      controller.isPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            GFButton(
              onPressed: () {
                controller.login();
              },
              text: "Login",
              color: GFColors.PRIMARY,
            ),
            GFButton(
              onPressed: () {
                Get.offNamed('/signup');
              },
              text: "Register",
              color: GFColors.SECONDARY,
            ),
          ],
        ),
      ),
    );
  }
}
