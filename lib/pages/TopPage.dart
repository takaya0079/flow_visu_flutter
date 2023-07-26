import 'package:flutter/material.dart';

import '../components/PrimaryButton.dart';
import '../components/MyOutlinedButton.dart';
import '../components/header.dart'; 


class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Flow Visu'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PrimaryButton(
              onTap: () {
                Navigator.pushNamed(context,'/sensor');
              },
              displayText: 'Start'
            ),
            MyOutlinedButton(
              onTap: () { 
                Navigator.pushNamed(context,'/name');
              },
              displayText: 'Set',
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Divis'),
            ),
          ]
        )
      ),
    );
  }
}
