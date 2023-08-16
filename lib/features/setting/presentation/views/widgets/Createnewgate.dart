import 'package:facility_management/constants.dart';
import 'package:facility_management/core/shared_widgets/custom_buttom.dart';
import 'package:facility_management/features/setting/presentation/viewmodel/addcubitstates.dart';
import 'package:facility_management/features/setting/presentation/viewmodel/addtonotificationcubit.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/fully_gate_notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../core/shared_widgets/text_field.dart';
import '../new_gate.dart';
import 'inputNewGate.dart';

class Create_New_Gate extends StatefulWidget {

  @override
  State<Create_New_Gate> createState() => _Create_New_GateState();
}

class _Create_New_GateState extends State<Create_New_Gate> {
var unitNameController=TextEditingController();

var requestDataController=TextEditingController();

var serviceProviderController=TextEditingController();

var detailsController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCubit,AddtoNotification>(
     builder: (context,state){
       return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            SizedBox(height: 10.h,),
           const Text("Create new gate notification",style: TextStyle(color: Colors.black),),
            SizedBox(height: 15.h,),
           InputNewGate(text: 'Select a Unit', controller: unitNameController,),
            SizedBox(height: 15.h,),
           InputNewGate(text: 'Select request date', controller: requestDataController, ),
            SizedBox(height: 15.h,),
           InputNewGate(text: 'Service provider', controller: serviceProviderController, ),
            SizedBox(height: 15.h,),
           defaultText(
               controller: detailsController,
               type: TextInputType.text,
               borderWidth: .3,
               hint: "Extra details",
               maxLines: 9


           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
             child: CustomButton(backgroundColor: kPrimaryColor, text: "Notify Gate",
               func: () {

                  Navigator.push(context,PageTransition(child: Fully_Gate_Notification(
                    name: unitNameController.text, date: requestDataController.text,
                    details: detailsController.text, service: serviceProviderController.text,

                  ),
                      type: PageTransitionType.topToBottom,duration: Duration(seconds: 1)));
               }, width: double.infinity,height: 55.h,),
           )
         ],
       );
     },
     listener:(context,state){} ,
    );
  }
}
//sara tany
////sara yasser

