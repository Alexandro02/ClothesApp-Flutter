import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Widget pageToNav;

  const Button({super.key, required this.text, required this.pageToNav});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // Navigation
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => pageToNav,
        ),
      ),
      // Just styling button
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(140.0, 45.0),
        ),
      ),
      // Text to show
      child: Text(text),
    );
  }
}
