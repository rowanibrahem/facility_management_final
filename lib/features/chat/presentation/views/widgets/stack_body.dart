import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import 'chat_content.dart';
class ChatStack extends StatelessWidget {
  const ChatStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: lightWhiteColor, borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 25,
              horizontal: MediaQuery.of(context).size.width / 20),
          height: MediaQuery.of(context).size.height * .48,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.height / 30,
                MediaQuery.of(context).size.height / 20,
                MediaQuery.of(context).size.height / 30,
                MediaQuery.of(context).size.height / 30),
            child: ChatContent(),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: DecoratedBox(
           decoration:  BoxDecoration(
         shape: BoxShape.circle,
        gradient: LinearGradient(
         begin: Alignment.topCenter,
         end: Alignment.bottomRight,
        colors: [
                  const Color(0xFFB39952).withOpacity(1.0), // Full opacity #B39952
                  const Color(0xFFB39952).withOpacity(0.75),
                  const Color(0xFFB39952).withOpacity(0.5),
                  const Color(0xFFE3C980).withOpacity(0.25),
                ],
              ),
    ),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width / 20,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                    'assets/icons/message-edit-bold.png',
                  width: MediaQuery.of(context).size.width / 10,
                ),
              ),
            ),
        ),
      ],

    );
  }
}
