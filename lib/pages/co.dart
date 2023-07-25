import 'package:flutter/material.dart';

import '../components/PrimaryButton.dart';
import '../components/receive.dart';

class comfirmation extends StatefulWidget {
  const comfirmation({Key? key}) : super(key: key);

  @override
  comfirmationState createState() => comfirmationState();
}

class comfirmationState extends State<comfirmation> {
  String dropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         const TitleTextDisplay(title: 'ブース', text: 'サーバーから読み取り'),

         const TitleTextDisplay(title: 'タグID', text: 'サーバーから読み取り'),

         PrimaryButton(
            onTap: () {
              Navigator.pushNamed(context,'/');
            },
            displayText: 'トップに戻る'
          ),
          
        ]
      )
    );
  }
}
