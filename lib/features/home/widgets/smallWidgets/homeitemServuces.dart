
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class HomeItemServices extends StatelessWidget {

  final String text;
  final ImageProvider<Object> imagePath;
  const HomeItemServices({Key? key, required this.text, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/1.3,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration:  BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
            color: LIGHT_GREY,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: imagePath,
            ),
            const SizedBox(height: 10,),
            Text(
              text,
              style: Styles.textStyle22.copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}