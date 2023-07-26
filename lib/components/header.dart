import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true, // タイトルを中央揃えにします
      backgroundColor: Colors.cyan[100], // 背景を薄い水色に設定します
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
