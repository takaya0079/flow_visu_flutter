import 'package:flutter/material.dart';
import '../components/MyHeader.dart'; 
import '../components/MyFilledButton.dart';

class UserSettingPage extends StatefulWidget {
  const UserSettingPage({Key? key}) : super(key: key);

  @override
  State<UserSettingPage> createState() => _UserSettingPageState();
}

class _UserSettingPageState extends State<UserSettingPage> {
  String userName = '';

  void _handleTextFieldChanged(String s) {
    setState(() {
      userName = s;
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyHeader(), // AppBar追加
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 270,
                child: TextField(
                  decoration: const InputDecoration(labelText: "ユーザー名"),
                  maxLines: 1,
                  onChanged: _handleTextFieldChanged,
                ),
              ),
              const SizedBox(height: 30),

              MyFilledButton(
                onTap: () { Navigator.pushNamed(context, '/'); print("TODO: 保存処理"); },
                displayText: '保存'
              ),
              const SizedBox(height: 30),
              MyFilledButton(
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
