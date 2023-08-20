import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class CustomImageButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomImageButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
            color: isSelected ? kPrimaryColor : LIGHT_GREY,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: Styles.textStyle15.copyWith(fontSize: 12, color: Colors.black),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                // Add your custom button's onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shadowColor: Colors.transparent,
                side: const BorderSide(color: Colors.white, width: 1.5),
              ),
              child: Text(
                'Delete',
                style: Styles.textStyle22.copyWith(fontSize: 11, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
