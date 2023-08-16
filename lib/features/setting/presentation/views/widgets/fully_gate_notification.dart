import 'package:facility_management/constants.dart';
import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/core/shared_widgets/custom_buttom.dart';
import 'package:facility_management/features/setting/presentation/views/new_gate.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fully_Gate_Notification extends StatelessWidget {
Fully_Gate_Notification({required this.name,required this.date,required this.details, required this.service});

final String name;
final String date;
final String service;
final String details;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBarButtom2(text: "Gate notification"),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 60.h,),
           Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: LIGHT_GREY.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerRowNotif(name: name, date: date,widget: Text(date),),
                  ContainerRowNotif(name: service, date: date,widget: Icon(Icons.delete,color: Colors.red,),),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(details),
                  ),

                ],
              )
            ),
           Spacer(),
           Padding(
             padding: const EdgeInsets.only(bottom: 30,right: 20,left: 20),
             child: CustomButton(backgroundColor: kPrimaryColor, text: "Create New Gate notification",
                 func: (){
Navigator.pop(context);                 }, width: double.infinity),
           )

         ],
       ),
      )
    );
  }
}

class ContainerRowNotif extends StatelessWidget {
   ContainerRowNotif({
    super.key,
    required this.name,
    required this.date,
    required this.widget
  });

  final String name;
  final String date;
     Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: TextStyle(fontSize: 20.sp),),
          widget,
        ],
      ),
    );
  }
}
