import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/appBarForHomePage.dart';
import '../widgets/homeIistview.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: lIGHT_BACKGROUND ,
appBar: AppBarForHomePage(text: 'Compound Name', sizedBoxWidth: 10,),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: HomeListview()
        ),

      ),
    );
  }
}
