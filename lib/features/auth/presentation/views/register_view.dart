
import 'package:facility/features/auth/presentation/views/widgets/register_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/button_appbar.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AppBarButtom(),
        body: RegisterBody(),
      ),
    );
  }
}
