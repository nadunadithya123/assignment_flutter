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
    final ValueNotifier<bool> _obscureText =
        obscureNotifier ?? ValueNotifier<bool>(isPassword);

    return ValueListenableBuilder<bool>(
      valueListenable: _obscureText,
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: value,
              validator: validator,
              style: const TextStyle(
                letterSpacing: 2,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                floatingLabelStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey, // focused state
                ),
                labelText: labelText,
                border: InputBorder.none,
                suffixIcon: isPassword
                    ? Icon(
                        Icons.lock_outline, // <-- outline lock icon
                        color: Colors.grey,
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              width: 326, // desired line length
              height: 1,
              color: const Color.fromRGBO(0, 0, 0, 0.3),
            ),
          ],
        );
      },
    );
  }
}
