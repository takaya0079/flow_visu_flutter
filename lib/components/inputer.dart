import 'package:flutter/material.dart';
 
// InputSaveDisplayクラス。テキストフィールドの入力を取得し、それを保存し、保存されたテキストを表示します。
class InputSaveDisplay extends StatefulWidget {
  @override
  _InputSaveDisplayState createState() => _InputSaveDisplayState();
}

class _InputSaveDisplayState extends State<InputSaveDisplay> {
  String inputText = '';
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Container(
            width: 300,  // 幅を300ピクセルに制限
            child: TextField(
              controller: myController,
            ),
          ),
        ),
        ElevatedButton(
          child: const Text('Save'),
          onPressed: () {
            setState(() {
              inputText = myController.text;
            });
          },
        ),
      ],
    );
  }
}