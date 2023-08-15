import 'package:facility_management/constants.dart';
import 'package:facility_management/core/shared_widgets/CutomTabBar.dart';
import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/setting/presentation/animation/fadeanimation.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/AddRequestBody.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/griditem.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/selectContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../services/presentation/view/widgets/grid_item.dart';

class Add_Request_View extends StatefulWidget {

  @override
  State<Add_Request_View> createState() => _Add_Request_ViewState();
}

class _Add_Request_ViewState extends State<Add_Request_View> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(text: "Add Request",),
        body: FadeAnimation(3, child: Add_Request_Body(),)
      ),
    );
  }
}




