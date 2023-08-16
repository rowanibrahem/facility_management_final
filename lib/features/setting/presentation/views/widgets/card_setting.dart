import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class card_setting extends StatelessWidget {

String ?txt;
IconData?icon;
card_setting({required this.icon,required this.txt});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: Column(
        children: [
          SizedBox(
            height: 80.h,
            child: Card(

              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  children: [
                    Icon(icon),
                    SizedBox(width: 30.w,),
                    Text(txt!)
                  ],
                ),
              ),

            ),
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
