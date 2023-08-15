import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/text_field.dart';
import 'List_setting.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(height: 30.h,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 5,
            shadowColor: Colors.black,
            child: defaultText(
                type: TextInputType.text,
                hint: "search",
                borderWidth: .005

            ),
          ),


        ),
        List_Setting(),


      ],
    );
  }
}