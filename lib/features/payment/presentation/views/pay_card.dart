import 'package:facility_management/core/shared_widgets/button_appbar.dart';
import 'package:facility_management/features/payment/presentation/views/widgets/pay_card.dart';
import 'package:flutter/material.dart';

class PayCardView extends StatelessWidget {
  const PayCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom(),
        body: PayCard(),
      ),
    );
  }
}