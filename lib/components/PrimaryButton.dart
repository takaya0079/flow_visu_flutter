import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.onTap,
    required this.displayText,
    Key? key
  }) : super(key: key);

  final VoidCallback onTap;
  final String displayText; 

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        foregroundColor : const Color(0xFF005DB9),
        fixedSize: const Size(200,50),
      ),
      child: Text(displayText),
    );
  }
}