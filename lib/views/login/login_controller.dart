import 'package:assignment/sources/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/model/user_model.dart';

class LoginController extends GetxController {
  final Repository repository = Get.find();

  var isLoading = false.obs;
  var user = Rxn<User>();
  var errorMessage = ''.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  Future<void> login() async {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      errorMessage.value = "Email and password cannot be empty";
      Get.snackbar(
        "Error",
        errorMessage.value,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
      return;
    }

    isLoading.value = true;
    errorMessage.value = '';

    try {
      final request = LoginRequest(email: email, password: password);
      final loggedInUser = await repository.login(request);

      user.value = loggedInUser;

      Get.offNamed('/jobs');
    } on Exception catch (e) {
      errorMessage.value = e.toString().replaceAll('Exception: ', '');
      Get.snackbar(
        "Login Failed",
        errorMessage.value,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadCachedUser() async {
    final cached = await repository.getUser();
    if (cached != null) {
      user.value = cached;
    }
  }
}
