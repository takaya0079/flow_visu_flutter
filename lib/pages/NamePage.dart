import 'package:flutter/material.dart';
import '../components/header.dart'; 
import '../components/PrimaryButton.dart';
import '../components/inputer.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  NamePageState createState() => NamePageState();
}

class NamePageState extends State<NamePage> {
  String dropdownValue = '1';

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Flow Visu'), // AppBar追加
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InputSaveDisplay(),
              PrimaryButton(
                onTap: () {},
                displayText: '送信'
              ),
              PrimaryButton(
                onTap: () {
                  Navigator.pushNamed(context,'/');
                },
                displayText: 'トップに戻る'
              ),
            ]
          )
        ),
      ),
    );
  }

}
