import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/text_field.dart';

class InputNewGate extends StatelessWidget {
 InputNewGate({required this.text,required this.controller});
String? text;
var controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!),
        SizedBox(height: 5.h,),
        defaultText(
          controller: controller,
          type: TextInputType.text,
          borderWidth: .3,
          hint: "Search",

        ),
      ],
    );
  }
}