import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color backgroundColor;
  final Color foregroundColor;
  final EdgeInsetsGeometry padding;
  final double fontSize;

  const CommonButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.fontSize = 16,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
    this.padding = const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: const Size(326, 40),
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: child,
    );
  }
}
