import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  MyHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      centerTitle: true, // タイトルを中央揃えにします
      backgroundColor: const Color(0xFF005DB9), // 背景を薄い水色に設定します
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}