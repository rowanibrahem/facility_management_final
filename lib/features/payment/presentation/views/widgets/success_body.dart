import 'package:facility/features/payment/presentation/views/widgets/success_stack.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SuccessStack(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 14,
          ),
          CustomButton(
            backgroundColor: kPrimaryColor,
            text: 'Done',
            func: () {},
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 14,
          )
        ],
      ),
    );
  }
}
