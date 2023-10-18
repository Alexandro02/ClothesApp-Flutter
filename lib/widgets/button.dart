import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Widget pageToNav;
  final Color buttonColor;
  final double buttonSizeHeight;
  final double buttonSizeWidth;

  const Button({
    super.key,
    required this.buttonText,
    required this.pageToNav,
    required this.buttonColor,
    required this.buttonSizeHeight,
    required this.buttonSizeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // Navigation
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => pageToNav,
        ),
      ),
      // Button Styles
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(buttonSizeWidth, buttonSizeHeight),
        ),
      ),
      // Text Button
      child: Text(buttonText),
    );
  }
}
