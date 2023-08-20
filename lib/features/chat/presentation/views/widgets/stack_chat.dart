import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class StackChat extends StatelessWidget {
  const StackChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: lightWhiteColor, borderRadius: BorderRadius.circular(20)
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 25,
              horizontal: MediaQuery.of(context).size.width / 20
          ),
          width: double.infinity,
          child:  Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height / 10,),
            child: Column(
              children: [
                Text('Your inquire was sent successfully!',
                style: Styles.textStyle16.copyWith(fontSize: 18),
                ),
            SizedBox(height: 5,),
            const Center(
                child: Text(
                  'Thank you',
                  style: Styles.textStyle16,
                ),
            ),
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFB39952).withOpacity(1.0),
                    const Color(0xFFB39952).withOpacity(0.75),
                    const Color(0xFFB39952).withOpacity(0.5),
                    const Color(0xFFE3C980).withOpacity(0.25),
                  ],
                ),
              ),
              child: CircleAvatar(

                radius: MediaQuery.of(context).size.width / 18,
                backgroundColor: kPrimaryColor,
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width / 10,
                ),
              ),
            )),
      ],
    );
  }
}
