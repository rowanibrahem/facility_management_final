
import 'package:facility/features/payment/presentation/views/widgets/radio_buttom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/utilies/styles.dart';
import 'image_stack2.dart';

class PayBody extends StatefulWidget {
  const PayBody({Key? key}) : super(key: key);

  @override
  State<PayBody> createState() => _PayBodyState();
}

class _PayBodyState extends State<PayBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Expanded(
         flex: 2,
           child: StackImage()),
        Expanded(
            flex:3 ,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Choose your payment method',
                      style: Styles.textStyle15.copyWith(fontSize: 18 , color: Colors.black),
                    ),
                    const RadioCheck2(),
                  ],
                ),
              ),
            ),),
        Expanded(
            child: CustomButton(
              width: MediaQuery.of(context).size.width*.7,
              backgroundColor: kPrimaryColor,
              text: 'Confirm',
              func: () {
                GoRouter.of(context).push('/successView',);
              },
            ),),
      ],
    );
  }
}
