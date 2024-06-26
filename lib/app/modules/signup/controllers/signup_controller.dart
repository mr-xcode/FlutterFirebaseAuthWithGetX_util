import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/colors/gf_color.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Rx<bool> isPasswordVisible = false.obs;

  Future<void> signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } catch (e) {
      Get.snackbar(
        "Sign Up Error",
        e.toString(),
        backgroundColor: GFColors.DANGER,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(
          seconds: 1,
        ),
      );
    }
  }
}
