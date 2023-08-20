
import 'package:facility/features/setting/presentation/views/widgets/Usernotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/appbar2.dart';

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


