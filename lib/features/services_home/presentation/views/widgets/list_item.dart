import 'package:facility_management/constants.dart';
import 'package:facility_management/core/utilies/styles.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {

  final String text;
  final ImageProvider<Object> imagePath;
  const HomeItem({Key? key, required this.text, required this.imagePath , required this.num}) : super(key: key);
final double num ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: num/1.3,
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
