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
    return ListView(
      children: [
         SizedBox(height: 20.h,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 1,
            shadowColor: Colors.grey.shade300,
            child: defaultText(
              prefix: Icons.search_outlined,
                type: TextInputType.text,
                hint: "search for services,offer...",
                   borderWidth: .001
            ),
          ),


        ),
        SizedBox(height: 5.h,),
        List_Setting(),


      ],
    );
  }
}