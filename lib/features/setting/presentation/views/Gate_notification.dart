import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/Usernotification.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Empty_Gate_Notification_View extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
appBar: AppBarButtom2(text: 'Gate Notification',),
        body: EmptyNotificationListView()

      ),
    );
  }
}


