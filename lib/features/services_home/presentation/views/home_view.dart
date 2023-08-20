import 'package:facility/features/services_home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: 'Pay a bill',),
        body: HomeBody(),
      ),
    );
  }
}
