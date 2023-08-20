
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/check_button.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/assets.dart';
import '../../../../../core/utilies/styles.dart';

class PayCard extends StatefulWidget {
  const PayCard({Key? key}) : super(key: key);

  @override
  State<PayCard> createState() => _PayCardState();
}

class _PayCardState extends State<PayCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Add new card',
            style: Styles.textStyle15.copyWith(fontSize: 18 , color: Colors.black),
          ),
          SizedBox(height: 50,),
          Text(
            'Card Number',
            style: Styles.textStyle22.copyWith(fontSize: 12),
          ),
          SizedBox(height: 8,),
          defaultText(
              type: TextInputType.text,
            prefixImageAsset: AssetData.penIcon,
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expire date',
                      style: Styles.textStyle22.copyWith(fontSize: 12),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration:  InputDecoration(
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: Styles.textStyle22.copyWith(fontSize: 12),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration:  InputDecoration(
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'CVV',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Text(
              'Cardholder name',
            style: Styles.textStyle22.copyWith(fontSize: 12),
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
          ),
          SizedBox(height: 14,),
          CheckButtom(
            text: 'Save card for future payment',
          ),
        SizedBox(height: 50,),
          CustomButton(
            width: MediaQuery.of(context).size.width*.7,
              backgroundColor: kPrimaryColor,
              text: 'Confirm',
              func: (){}
          ),
        ],
      ),
    );
  }
}
