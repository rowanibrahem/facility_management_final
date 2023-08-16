import 'package:facility_management/features/home/widgets/appBarForHomePage.dart';
import 'package:facility_management/features/home/widgets/homeIistview.dart';
import 'package:flutter/material.dart';



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
