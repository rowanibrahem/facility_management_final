
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/utilies/styles.dart';
import '../../data.dart';
class LastBoarding extends StatelessWidget {
  const LastBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Image.asset(BoardingData.Images[2]),
           Padding(
             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/20, bottom:MediaQuery.of(context).size.height/40 ),
             child: Text(BoardingData.headingData[2],style: Styles.textStyle27,),
           ),
           Text(BoardingData.desc[2], style: Styles.textStyle20.copyWith(color: LIGHT_GREY),),
           Padding(
             padding: EdgeInsets.fromLTRB(
                8,
                MediaQuery.of(context).size.height / 20,
                8,
                MediaQuery.of(context).size.height / 40),
            child: SizedBox(

                height: MediaQuery.of(context).size.height / 16,
                child: CustomButton(
                  width: double.infinity,
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                  text: 'Register',
                  fontSized: MediaQuery.of(context).size.width / 22,
                  func: ()=> GoRouter.of(context).push('/registerView',),
                 // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterView())),
             )),
           ),
           SizedBox(
             height: MediaQuery.of(context).size.height/16,
             child: CustomButton(
               width:double.infinity,
               backgroundColor: Colors.white,
               textColor: kPrimaryColor,
               text: 'Sign in',fontSized: MediaQuery.of(context).size.width/22,
               func: ()=> GoRouter.of(context).push('/signView',),
           ),
           )
         ],
      ),
    );
  }
}
