
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/appBarForHomePage.dart';
import '../widgets/homeServicesList.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lIGHT_BACKGROUND ,
      appBar: AppBarForHomePage(text: 'Services', sizedBoxWidth: 145,),
      body: HomeServiceList () ,
    );
  }
}
