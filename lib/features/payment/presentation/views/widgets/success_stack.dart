import 'package:facility/features/payment/presentation/views/widgets/reciet_contenent.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
class SuccessStack extends StatelessWidget {
  const SuccessStack({Key? key}) : super(key: key);

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
          height: MediaQuery.of(context).size.height * .55,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.height / 30,
                MediaQuery.of(context).size.height / 20,
                MediaQuery.of(context).size.height / 30,
                MediaQuery.of(context).size.height / 30),
            child: Receit(),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 12,
              backgroundColor: kPrimaryColor,
              child: Icon(
                Icons.check_rounded,
                color: Colors.white,
                size: MediaQuery.of(context).size.width / 8,
              ),
            ))
      ],

    );
  }
}
