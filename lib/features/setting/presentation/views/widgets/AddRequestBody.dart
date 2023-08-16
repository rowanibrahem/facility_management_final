import 'package:facility_management/features/setting/presentation/animation/fadeanimation.dart';
import 'package:facility_management/features/setting/presentation/views/widgets/selectContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/CutomTabBar.dart';
import 'griditem.dart';

class Add_Request_Body extends StatelessWidget {
  const Add_Request_Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h,),
        Custom_TabBar(),
        SizedBox(height: 7.h,),
        SelectContainer(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
              child: FadeAnimation(4,child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 6,
                  itemBuilder: (context , index)=>Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridItemSetting(index: index,)
                  )),)
            )
        )

      ],
    );
  }
}