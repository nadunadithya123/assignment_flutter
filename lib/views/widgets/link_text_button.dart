import 'package:flutter/material.dart';

class LinkTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double fontSize;
  final bool underline;

  const LinkTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.fontSize = 14,
    this.underline = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none,
          decorationColor: Colors.blue, // <-- underline color
          decorationThickness: 1.5, // optional: thickness of underline
          decorationStyle: TextDecorationStyle.solid, // optional: style
        ),
      ),
    );
  }
}
