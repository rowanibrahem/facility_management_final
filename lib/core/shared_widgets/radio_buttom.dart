import 'package:flutter/material.dart';

import '../utilies/styles.dart';

class RadioCheck extends StatefulWidget {
  const RadioCheck({Key? key}) : super(key: key);

  @override
  State<RadioCheck> createState() => _RadioCheckState();
}

class _RadioCheckState extends State<RadioCheck> {
  int _selectedValue = 1;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
         padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: _selectedValue == 1 ? Colors.black : Colors.white70, // Customize the border color for the selected and unselected states
              width: 1, // Adjust the border width as needed
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                activeColor: Colors.black,
                value: 1,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as int;
                  });
                },
              ),
              SizedBox(width: 5,),
              Text(
                'Male',
                style: Styles.textStyle22.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
        SizedBox(width: 20,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: _selectedValue == 2 ? Colors.black : Colors.white70, // Customize the border color for the selected and unselected states
              width: 1, // Adjust the border width as needed
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(
                activeColor: Colors.black,
                value: 2,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as int;
                  });
                },
              ),
              SizedBox(width: 5,),
              Text(
                'Female',
                style: Styles.textStyle22.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
