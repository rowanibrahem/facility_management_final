import 'package:facility/features/payment/presentation/views/widgets/pay_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/shared_widgets/appbar2.dart';
import '../../../../core/utilies/styles.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBarButtom2(
        text: '',
        columnText: Column(
          children: [
            const Text(
                "Payment",
                style: Styles.textStyle16
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                  "Payment methods",
                  style:Styles.textStyle12.copyWith(color:LIGHT_GREY ) ),
            ),
          ],
        ),),
        body: PayBody(),
      ),
    );
  }
}
