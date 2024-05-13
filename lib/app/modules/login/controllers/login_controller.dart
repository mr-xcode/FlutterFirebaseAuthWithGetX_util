import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Rx<bool> isPasswordVisible = false.obs;

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } catch (e) {
      Get.snackbar(
        "Login Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(
          seconds: 1,
        ),
      );
    }
  }
}
