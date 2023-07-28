import 'package:flutter/material.dart';

import '../components/MyFilledButton.dart';
import '../components/information_card.dart';
import '../components/MyHeader.dart'; 

class BoothFinishPage extends StatelessWidget {
  const BoothFinishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyHeader(), // AppBar追加
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const InformationCard(title: 'ブース', text: 'サーバーから読み取り'),
            const SizedBox(height: 10),
            const InformationCard(title: 'タグID', text: 'サーバーから読み取り'),
            const SizedBox(height: 30),
            MyFilledButton(
              onTap: () {
                Navigator.pushNamed(context,'/');
              },
              displayText: '終了'
            ),
          ]
        )
      ),
    );
  }

}
