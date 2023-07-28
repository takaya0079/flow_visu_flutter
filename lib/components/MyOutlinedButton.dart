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
        backgroundColor: const Color(0xFFD6E3FF),
        fixedSize: const Size(300, 50),
        side: const BorderSide(
          color: Color(0xFF005DB9)
        )
      ),
      child: Text(
        displayText,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}