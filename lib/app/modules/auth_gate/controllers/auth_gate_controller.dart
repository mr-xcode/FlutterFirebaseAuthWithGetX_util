import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthGateController extends GetxController {
  //TODO: Implement AuthGateController

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _auth.authStateChanges();
  @override
  void onInit() {
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Get.offNamed('/login');
      } else {
        Get.offNamed('/home');
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
