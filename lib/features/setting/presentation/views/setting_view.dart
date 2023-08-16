import 'package:facility_management/features/setting/presentation/animation/fadeanimation.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/setting_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class SettingView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarButtom2(text: 'More Information'),
        body:FadeAnimation(3,child:  SettingBody(),)
      ),
    );
  }
}




