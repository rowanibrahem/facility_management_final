
import 'package:flutter/material.dart';

import '../../../../../core/utilies/assets.dart';
import '../../../setting/presentation/views/widgets/home_item.dart';
import 'homeitemServuces.dart';

class Grid_Item_Services extends StatelessWidget {
  Grid_Item_Services({Key? key , required this.index}) : super(key: key);
  int index=0;
  @override
  Widget build(BuildContext context) {
    return HomeItemServices(
      text: services[index],
      imagePath: AssetImage(AssetData.homeServices1[index],),
    );
  }

  final services = [
  "Pay a pill",
   "Complain",
   "Security",
   "اداره ممتلكات",
   "Rating",
   "تصاريح ",
   "News",
   "اجراءات",
   "News",
   "اجراءات"
  ];
}