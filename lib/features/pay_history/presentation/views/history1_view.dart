import 'package:facility/features/pay_history/presentation/views/widgets/app_bar.dart';
import 'package:facility/features/pay_history/presentation/views/widgets/history1_body.dart';
import 'package:flutter/material.dart';

class PayHistoryView extends StatelessWidget {
  const PayHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBarButtom3(text: 'Payment history',),
        body: const HistoryBody(),
      ),
    );
  }
}
