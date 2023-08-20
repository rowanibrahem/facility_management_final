import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utilies/styles.dart';

class CheckButtom extends StatefulWidget {
  final String text;
  const CheckButtom({Key? key, required this.text}) : super(key: key);

  @override
  State<CheckButtom> createState() => _CheckButtomState();
}

class _CheckButtomState extends State<CheckButtom> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            activeColor: kPrimaryColor,
            onChanged: (newBool){
              setState(() {
                isChecked = newBool!;
              });
            }
        ),
        Text(
          widget.text,
          style: Styles.textStyle22.copyWith(fontSize: 13),
        ),
      ],
    );
  }
}