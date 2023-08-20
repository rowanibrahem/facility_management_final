
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';
import '../detailshistoryview.dart';
import 'historycontainercontent.dart';

class History_Request_Container extends StatelessWidget {
  const History_Request_Container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: LIGHT_GREY.withOpacity(.2),
            borderRadius: BorderRadius.circular(7)
        ),
        height: 120.h,
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
               History_Container_Content(
                 Firstwidget: const Text("Activate QR ID",style: Styles.textStyle20,),
                 Secondwidget:  const Text("28 December 2022",style: TextStyle(color: LIGHT_GREY),),

               ),
               SizedBox(height: 5.h,),
              Text('Entrance Activation',style: Styles.textStyle12.copyWith(color:LIGHT_GREY ),),
               SizedBox(height: 10.h,),
               History_Container_Content(
                   Firstwidget: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const Text('Status: Closed'),
                       SizedBox(height: 3.h,),
                       const Text('Unit:  MG Development'),
                     ],
                   ),
                   Secondwidget:  CircleAvatar(

                     backgroundColor: kPrimaryColor,
                     radius: 15.r,
                     child: IconButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>History_Details()));
                     }, icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 18,),)
                   )


               )
            ],
          ),
        ),
      ),
    );
  }
}





