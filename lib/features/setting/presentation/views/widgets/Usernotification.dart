import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:facility_management/features/setting/presentation/viewmodel/addcubitstates.dart';
import 'package:facility_management/features/setting/presentation/viewmodel/addtonotificationcubit.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../new_gate.dart';
import 'fully_gate_notification.dart';

class EmptyNotificationListView extends StatelessWidget {
  @override

  final cubit=AddCubit();
  Widget build(BuildContext context) {
    return BlocConsumer<AddCubit,AddtoNotification>(
      builder: (context,state){
        return

        Column(
          children: [
            const Spacer(flex: 4,),
            DefaultTextStyle(style: const TextStyle(color: LIGHT_GREY),
              child:AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText("You don't have any invitations at that moment")              ],

              )
            ),
            
            const Spacer(flex: 3,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.h,),
              child: CustomButton(
                height: 60.h,
                backgroundColor: kPrimaryColor, text: 'Create New Gate Notification ', func: () {
                Navigator.push(context,
                    PageTransition(child: New_Gate(),
                    type: PageTransitionType.topToBottom,duration: Duration(seconds: 1))


                );

              }, width: double.infinity,),
            ),
            const Spacer()
          ],
        );

      },
      listener: (context,state){

      },
    );
  }
}