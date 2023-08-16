import 'package:facility_management/features/setting/presentation/views/Gate_notification.dart';
import 'package:facility_management/features/setting/presentation/views/add_request_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'card_setting.dart';
import 'listmodel_setting.dart';

class List_Setting extends StatelessWidget {

  final List<ListModelSetting> items=[
    ListModelSetting(icon: Icons.garage_outlined, text:" Gate Notification" ),
    ListModelSetting(icon: Icons.message, text:" Add Request" ),
    ListModelSetting(icon: Icons.question_mark_outlined, text:"Community info" ),
    ListModelSetting(icon: Icons.info, text:"Help center" ),
    ListModelSetting(icon: Icons.phone, text:"Contact us" ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index)=>
            GestureDetector(

              child: card_setting(
                  icon: items[index].icon,
                  txt: items[index].text),

              onTap: (){
              index==0?
              Navigator.push(
                  context, PageTransition(child: Empty_Gate_Notification_View(),
                  type: PageTransitionType.leftToRightWithFade,duration: Duration(seconds: 1)))
                  :Navigator.push(context, PageTransition(child: Add_Request_View(),
                  type: PageTransitionType.leftToRightWithFade,duration: Duration(seconds: 1)));
              },

//  Navigator.push(context,PageTransition(child: SearchScreen(), type: PageTransitionType.leftToRightWithFade,duration:const Duration(seconds: 1)))
            ),

      ),
    );
  }
}
