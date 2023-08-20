import 'package:facility/features/auth/presentation/views/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/button_appbar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
       appBar: AppBarButtom(),
        body: SignBody(),
      ),
    );
  }
}
