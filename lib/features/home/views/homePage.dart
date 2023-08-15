import 'package:facility_management/features/home/widgets/bottomNavForHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../core/shared_widgets/appbar2.dart';
import '../../services_home/presentation/views/widgets/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
          backgroundColor: lIGHT_BACKGROUND ,
          bottomNavigationBar: BottomNavBarForHome(),

      ),
    );
  }
}
