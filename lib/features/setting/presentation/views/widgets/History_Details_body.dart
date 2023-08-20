
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/shared_widgets/text_field.dart';
import '../../../../../core/utilies/styles.dart';
import '../add_request_view.dart';
import 'HistoryRequestContainer.dart';

class History_Details_Body extends StatelessWidget {
  const History_Details_Body({
    super.key,
    required this.inputController,
  });

  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        History_Request_Container(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: defaultText(

              controller: inputController,
              type: TextInputType.text,
              borderWidth: .03,
              hint: "Provide any comments if you want to cancel",
              maxLines: 9


          ),
        ),
        SizedBox(height: 160.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: CustomButton(backgroundColor: Colors.red.shade700, text: "Cancel Request", func: (){
           showDialog(context: context, builder: (context)=>AlertDialog(
             content: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 170.h,
                 width: 250.w,
    child: Column(
      children: [
        const Text("Are you sure you want cancel \n               this request ?"),
        SizedBox(height: 70.h,),
       const Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Cancel_Button(),
           Confirm_Button(),
         ],
       )
      ],
    ),
  ),
)

);

          }, width: double.infinity),
        )
      ],
    );
  }
}

class Confirm_Button extends StatelessWidget {
  const Confirm_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap:(){
      showDialog(context: context, builder: (context)=>
      AlertDialog(
          content: Container(
            height: 200.h,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.check_circle_rounded,color: kPrimaryColor,size: 80.r,),
                Text("Request Canceld Successfuly"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: CustomButton(backgroundColor: kPrimaryColor, text: "Go To Home",
                      func: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Request_View()));
                      }, width: double.infinity),
                )
              ],
            ) ,
          ),

        )
      );
    },
        child: Container(
          alignment: Alignment.center,
          height: 40.h,
          width: 100.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color:kPrimaryColor,

          ),
          child: Text("Confirm",style: Styles.textStyle16.copyWith(color: Colors.white),),
        ),
      );
  }
}

class Cancel_Button extends StatelessWidget {
  const Cancel_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap:(){
Navigator.pop(context);
    },
        child: Container(
          alignment: Alignment.center,
          height: 40.h,
          width: 100.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color:LIGHT_GREY,
          ),
          child: Text("Cancel",style: Styles.textStyle16.copyWith(color: Colors.white),),
        ),
      );
  }
}

