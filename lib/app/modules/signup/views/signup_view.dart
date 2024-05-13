import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignupView'),
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
            TextField(
              controller: controller.passwordController,
              decoration: InputDecoration(label: Text("Password")),
            ),
            GFButton(
              onPressed: () {
                controller.signup();
              },
              text: "Register",
            ),
          ],
        ),
      ),
    );
  }
}
