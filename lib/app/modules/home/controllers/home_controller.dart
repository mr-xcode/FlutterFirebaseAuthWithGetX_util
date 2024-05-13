import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;
  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      Get.snackbar("Signout Error", e.toString());
    }
  }
}
