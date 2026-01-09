import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/form_field.dart';
import '../widgets/common_button.dart';
import '../widgets/link_text_button.dart';
import 'package:assignment/l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    final formKey = GlobalKey<FormState>();
    final LoginController controller = Get.find();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 72),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/icons/logo_inspection_manager.svg',
                  width: 202,
                  height: 36,
                ),
              ),
              const SizedBox(height: 72),
              Text(
                local.login_to_your_account_title,
                textAlign: TextAlign.left,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    CommonTextFormField(
                      labelText: local.login_email_lable,
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Email required';
                        if (!value.contains('@')) return 'Enter valid email';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    CommonTextFormField(
                      labelText: local.login_password_lable,
                      controller: controller.passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Password required';
                        if (value.length < 6) return 'Min 6 characters';
                        return null;
                      },
                    ),
                    const SizedBox(height: 128.5),
                    Center(
                      child: Obx(() => CommonButton(
                            onPressed: controller.isLoading.value
                                ? null
                                : () {
                                    if (formKey.currentState!.validate()) {
                                      controller.login();
                                    }
                                  },
                            child: controller.isLoading.value
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(
                                    local.login_button,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                          )),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: LinkTextButton(
                        text: local.forgot_password_link,
                        onPressed: () {},
                      ),
                    ),
                    Obx(() => controller.errorMessage.value.isNotEmpty
                        ? Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Center(
                              child: Text(
                                controller.errorMessage.value,
                                style: const TextStyle(color: Colors.red),
                              ),
                            ),
                          )
                        : const SizedBox.shrink()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
