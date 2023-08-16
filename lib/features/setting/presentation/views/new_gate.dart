import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/Createnewgate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class New_Gate extends StatelessWidget {
  const New_Gate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarButtom2(text: 'Gate Notification',),
        body:  Padding(
          padding: EdgeInsets.all(8.0),
          child: Create_New_Gate(),
        ),
      ),
    );
  }
}



