import 'package:facility_management/features/home/widgets/appBarForHomePage.dart';
import 'package:facility_management/features/home/widgets/discoverScreenUI.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: lIGHT_BACKGROUND ,
      appBar: AppBarForHomePage(text: 'Discover', sizedBoxWidth: 180,),
      body: const DiscoverScreenUI(),
    );
  }
}
