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
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: GFColors.PRIMARY,
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller.emailController,
              decoration: const InputDecoration(label: Text("Email")),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => TextField(
                controller: controller.passwordController,
                obscureText: !controller.isPasswordVisible.value,
                decoration: InputDecoration(
                  label: const Text("Password"),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.isPasswordVisible.value =
                          !controller.isPasswordVisible.value;
                      controller.update();
                    },
                    child: (controller.isPasswordVisible.value)
                        ? const Icon(
                            Icons.visibility,
                            color: GFColors.PRIMARY,
                          )
                        : const Icon(Icons.visibility_off),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GFButton(
                  onPressed: () {
                    Get.toNamed('/signup');
                  },
                  text: "Register",
                  color: GFColors.TRANSPARENT,
                ),
                GFButton(
                  onPressed: () {
                    controller.login();
                  },
                  text: "Login",
                  color: GFColors.PRIMARY,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
