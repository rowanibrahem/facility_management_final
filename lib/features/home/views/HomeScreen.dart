import 'package:facility_management/features/home/widgets/appBarForHomePage.dart';
import 'package:facility_management/features/home/widgets/homeIistview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
appBar: AppBarForHomePage(text: 'Compound Name', sizedBoxWidth: 10,),
        body: const Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            children: [
             Row(
               children: [
                 Text('Welcome , ', style: TextStyle(
                   color: kPrimaryColor,
                   fontSize: 20
                 ),),
                 Text('Loaa Hany', style: TextStyle(
                     fontSize: 20
                 ),)
               ],
             ),
              HomeListview()
            ],
          ),
        ),

      ),
    );
  }
}
