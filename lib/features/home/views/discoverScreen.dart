
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../widgets/appBarForHomePage.dart';
import '../widgets/discoverScreenUI.dart';

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
