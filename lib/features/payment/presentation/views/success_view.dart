
import 'package:facility/features/payment/presentation/views/widgets/success_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';
import '../../../../core/shared_widgets/button_appbar.dart';
class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: 'Payment',),
        body: SuccessBody(),
      ),
    );
  }
}