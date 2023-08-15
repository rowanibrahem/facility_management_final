import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/home/widgets/appBarForHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/homeServicesList.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lIGHT_BACKGROUND ,
      appBar: AppBarForHomePage(text: 'Services', sizedBoxWidth: 180,),
      body: HomeServiceList () ,
    );
  }
}
