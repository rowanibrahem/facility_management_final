import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/home/widgets/appBarForHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarForHomePage(text: 'Discover', sizedBoxWidth: 180,),
    );
  }
}
