import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  late FocusNode _focusNode1; // Declare FocusNode for the first TextFormField
  late FocusNode _focusNode2;
  late FocusNode _focusNode3; // Declare FocusNode for the second TextFormField
  late FocusNode _focusNode4;
  @override
  void initState() {
    super.initState();
    _focusNode1 = FocusNode(); // Initialize the first FocusNode
    _focusNode2 = FocusNode();
    _focusNode3 = FocusNode();
    _focusNode4 = FocusNode(); // Initialize the second FocusNode
  }

  @override
  void dispose() {
    _focusNode1.dispose(); // Dispose the first FocusNode to avoid memory leaks
    _focusNode2.dispose();
    _focusNode3.dispose;
    _focusNode4.dispose;// Dispose the second FocusNode to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              focusNode: _focusNode1, // Assign the first FocusNode to the TextFormField
              onTap: () {
                setState(() {
                  _focusNode1.requestFocus(); // Request focus when the text field is tapped
                  _focusNode2.unfocus(); // Unfocus the second text field
                });
              },
              onChanged: (value) {
                if (value.length == 1) {
                  _focusNode2.requestFocus(); // Move focus to the second text field when a digit is entered
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder( // Add focused border style
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: kPrimaryColor , width: 3), // Set the focused border color
                ),
              ),
              style: Styles.textStyle22.copyWith(fontSize: 20),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              focusNode: _focusNode2, // Assign the second FocusNode to the TextFormField
              onTap: () {
                setState(() {
                  _focusNode2.requestFocus(); // Request focus when the text field is tapped
                  _focusNode1.unfocus(); // Unfocus the first text field
                });
              },
              onChanged: (value) {
                if (value.length == 1) {
                  _focusNode3.requestFocus(); // Remove focus from the second text field when a digit is entered
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder( // Add focused border style
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: kPrimaryColor , width: 3), // Set the focused border color
                ),
              ),
              style: Styles.textStyle22.copyWith(fontSize: 20),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              focusNode: _focusNode3, // Assign the second FocusNode to the TextFormField
              onTap: () {
                setState(() {
                  _focusNode3.requestFocus(); // Request focus when the text field is tapped
                  _focusNode2.unfocus(); // Unfocus the first text field
                });
              },
              onChanged: (value) {
                if (value.length == 1) {
                  _focusNode4.requestFocus(); // Remove focus from the second text field when a digit is entered
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder( // Add focused border style
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: kPrimaryColor , width: 3), // Set the focused border color
                ),
              ),
              style: Styles.textStyle22.copyWith(fontSize: 20),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              focusNode: _focusNode4, // Assign the second FocusNode to the TextFormField
              onTap: () {
                setState(() {
                  _focusNode4.requestFocus(); // Request focus when the text field is tapped
                  _focusNode3.unfocus(); // Unfocus the first text field
                });
              },
              onChanged: (value) {
                if (value.length == 1) {
                  _focusNode4.unfocus(); // Remove focus from the second text field when a digit is entered
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder( // Add focused border style
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: kPrimaryColor , width: 3), // Set the focused border color
                ),
              ),
              style: Styles.textStyle22.copyWith(fontSize: 20),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
