import 'package:flutter/material.dart';

import '../components/MyFilledButton.dart';
import '../components/MyOutlinedButton.dart';
import '../components/MyHeader.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyHeader(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyFilledButton(
              onTap: () {
                Navigator.pushNamed(context, '/sensor');
              },
              displayText: '開始する'
            ),
            const SizedBox(height: 30),

            MyOutlinedButton(
              onTap: () {
                Navigator.pushNamed(context, '/userSetting');
              },
              displayText: 'ユーザー設定',
            ),
            const SizedBox(height: 30),

            MyOutlinedButton(
              onTap: () { },
              displayText: 'デバイス設定',
            ),
            const SizedBox(height: 30),

            MyOutlinedButton(
              onTap: () { Navigator.pushNamed(context, '/nfc'); },
              displayText: 'NFC',
            ),
            const SizedBox(height: 30),
            
          ]
        )
      ),
    );
  }
}
