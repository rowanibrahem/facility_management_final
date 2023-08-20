
import 'package:facility/features/setting/presentation/views/widgets/History_Details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/appbar2.dart';
import '../../../../core/shared_widgets/text_field.dart';

class History_Details extends StatelessWidget {
var inputController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBarButtom2(text: 'Request Details',),
        body: History_Details_Body(inputController: inputController),
      ),
    );
  }
}


