import 'package:flutter/material.dart';

import '../components/PrimaryButton.dart';
import '../components/receive.dart';
import '../components/header.dart'; 

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  String dropdownValue = '1';

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Flow Visu'), // AppBar追加
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TitleTextDisplay(title: 'ブース', text: 'サーバーから読み取り'),
            const TitleTextDisplay(title: 'タグID', text: 'サーバーから読み取り'),
            PrimaryButton(
              onTap: () {
                Navigator.pushNamed(context,'/confirm');
              },
              displayText: '送信'
            ),
            PrimaryButton(
              onTap: () {
                Navigator.pushNamed(context,'/');
              },
              displayText: 'トップに戻る'
            ),
          ]
        ),
      ),
    );
  }

}
