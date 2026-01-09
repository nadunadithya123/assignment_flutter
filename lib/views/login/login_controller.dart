import 'package:assignment/l10n/app_localizations.dart';
import 'package:assignment/l10n/app_localizations_en.dart';
import 'package:assignment/sources/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/model/user_model.dart';

class LoginController extends GetxController {
  final Repository repository = Get.find();

  final isLoading = false.obs;
  final user = Rxn<User>();
  final errorMessage = ''.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  Future<void> login() async {
    final context = Get.context;
    if (context == null) return;

    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      errorMessage.value = AppLocalizations.of(context)!.error_empty_email_password;
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
        AppLocalizations.of(context)!.login_failed_title,
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
