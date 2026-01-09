import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class CommonTextFormField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final ValueNotifier<bool>? obscureNotifier;

  const CommonTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.obscureNotifier,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> obscureText =
        obscureNotifier ?? ValueNotifier<bool>(isPassword);

    return ValueListenableBuilder<bool>(
      valueListenable: obscureText,
      builder: (context, isHidden, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: isPassword ? isHidden : false,
              validator: validator,
              style: const TextStyle(
                letterSpacing: 2,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                labelText: labelText,
                border: InputBorder.none,
                floatingLabelStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                suffixIcon: isPassword
                    ? IconButton(
                        icon: Icon(
                          isHidden
                              ? Icons.lock_outline
                              : Icons.lock_open_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          obscureText.value = !obscureText.value;
                        },
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              width: 326,
              height: 1,
              color: const Color.fromRGBO(0, 0, 0, 0.3),
            ),
          ],
        );
      },
    );
  }
}

