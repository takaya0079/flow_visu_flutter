import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    required this.onTap,
    required this.displayText,
    Key? key
  }) : super(key: key);

  final VoidCallback onTap;
  final String displayText; 

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xFF005DB9),
        fixedSize: const Size(200, 50),
      ),
      child: Text(displayText),
    );
  }
}