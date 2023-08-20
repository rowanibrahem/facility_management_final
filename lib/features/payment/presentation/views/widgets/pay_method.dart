import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';
import 'custom_buttom.dart';


class buildExpandedButtons extends StatefulWidget {
  const buildExpandedButtons({Key? key}) : super(key: key);

  @override
  State<buildExpandedButtons> createState() => _buildExpandedButtonsState();
}

class _buildExpandedButtonsState extends State<buildExpandedButtons> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CustomImageButton(
          text: '**** **** **** 1256',
          imagePath: 'assets/images/pay/visa.png',
           isSelected: selectedIndex == 0,
           onTap: () {
             setState(() {
               selectedIndex = 0;
             });
           },
        ),
        const SizedBox(height: 16),
         CustomImageButton(
          text: '**** **** **** 1256',
          imagePath: 'assets/images/pay/card.png',
           isSelected: selectedIndex == 1,
           onTap: () {
             setState(() {
               selectedIndex = 1;
             });
           },
        ),
        const SizedBox(height: 16),
        CustomImageButton(
          text: '**** **** **** 1256',
          imagePath: 'assets/images/pay/paybal.png',
          isSelected: selectedIndex == 2,
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                    weight: 100.0,
                  ),
                  onPressed: () {  GoRouter.of(context).push('/payCardView');},
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Text(
              'Add new card',
              style: Styles.textStyle22.copyWith(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
