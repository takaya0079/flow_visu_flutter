import 'package:flutter/material.dart';

import '../components/PrimaryButton.dart';
import '../components/dropdown.dart';


class SensorPage extends StatefulWidget {
  const SensorPage({Key? key}) : super(key: key);

  @override
  SensorPageState createState() => SensorPageState();
}

class SensorPageState extends State<SensorPage> {
  String dropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Material(  // <-- 追加
            child: DropdownWidget(
              value: dropdownValue,
              items: const ['1', '2', '3'],
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
          ),  // <-- 追加
          PrimaryButton(
            onTap: () {
              Navigator.pushNamed(context,'/start');
            },
            displayText: 'タグの読み取り'
          ),
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
