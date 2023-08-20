import 'package:facility/features/payment/presentation/views/widgets/pay_method.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class RadioCheck2 extends StatefulWidget {
  const RadioCheck2({Key? key}) : super(key: key);

  @override
  State<RadioCheck2> createState() => _RadioCheck2State();
}

class _RadioCheck2State extends State<RadioCheck2> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          buildRadioItem(1, 'Wallet'),
          const SizedBox(height: 20),
          buildRadioItem(2, 'Visa', expandable: true),
        ],
      ),
    );
  }

  Widget buildRadioItem(int value, String title, {bool expandable = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color(0xFFC4C4C4), // Customize the border color for the selected and unselected states
          width: 1, // Adjust the border width as needed
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Radio(
                activeColor: kPrimaryColor,
                value: value,
                groupValue: _selectedValue,
                onChanged: (newValue) {
                  setState(() {
                    _selectedValue = newValue as int;
                  });
                },
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          if (expandable && _selectedValue == value) ...[
            const SizedBox(height: 10),
            const buildExpandedButtons(),
          ],
        ],
      ),
    );
  }


}
