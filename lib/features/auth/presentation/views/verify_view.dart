import 'package:facility/features/auth/presentation/views/widgets/verify_body.dart';

import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/button_appbar.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AppBarButtom(),
        body: VerifyBody(),
      ),
    );
  }
}
