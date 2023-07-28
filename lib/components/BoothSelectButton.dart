import 'package:flutter/material.dart';

class BoothSelectButton extends StatelessWidget {
  final ValueChanged<String?> onChanged;
  final String selectedValue;

  const BoothSelectButton({
    Key? key,
    required this.onChanged,
    required this.selectedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boothList = [
      "Booth 1-1", "Booth 1-2", "Booth 1-3", 
      "Booth 2-1", "Booth 2-2", "Booth 2-3", 
      "Booth 3-1", "Booth 3-2", "Booth 3-3", 
    ];



    return SizedBox(
      width: 270,
      child: DropdownButton<String>(
        value: selectedValue,
        onChanged: onChanged,

        items: boothList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
            
          );
          
        }).toList(),
      ),
    );
  }
}
