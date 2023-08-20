import 'package:facility/features/services/presentation/view/widgets/services_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';
import '../../../../core/shared_widgets/button_appbar.dart';
class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarButtom2(text: 'Our services',),
        body: const ServicesBody(),
      ),
    );
  }
}