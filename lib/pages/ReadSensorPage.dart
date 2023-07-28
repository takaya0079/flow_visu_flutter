import 'package:flutter/material.dart';

import '../components/MyOutlinedButton.dart';
import '../components/MyFilledButton.dart';
import '../components/BoothSelectButton.dart';
import '../components/MyHeader.dart'; 

class ReadSensorPage extends StatefulWidget {
  const ReadSensorPage({Key? key}) : super(key: key);

  @override
  State<ReadSensorPage> createState() => _ReadSensorPageState();
}

class _ReadSensorPageState extends State<ReadSensorPage> {
  String selectedValue = 'Booth 1-1';

  void boothSelectChangedHandler(String? newValue) {
    setState(() {
      selectedValue = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyHeader(), // AppBar追加
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("ブース選択"),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BoothSelectButton(
                    selectedValue: selectedValue,
                    onChanged: boothSelectChangedHandler,
                  ),
                  const SizedBox(height: 30),

                  MyFilledButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/boothStart');
                    },
                    displayText: 'タグの読み取り'
                  ),
                  const SizedBox(height: 30),

                  MyOutlinedButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    displayText: 'トップへ戻る',
                  ),
                  const SizedBox(height: 30),
                ]
              ),
            ),
          ],
        )
      )
    );
  }

}
