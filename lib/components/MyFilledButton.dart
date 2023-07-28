import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton(
      {required this.onTap, required this.displayText, Key? key})
      : super(key: key);

  final VoidCallback onTap;
  final String displayText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFF005DB9),
        
        fixedSize: const Size(300, 50),
      ),
      child: Text(
        displayText,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
