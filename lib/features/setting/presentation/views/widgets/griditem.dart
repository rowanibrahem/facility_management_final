import 'package:facility_management/core/utilies/assets.dart';
import 'package:flutter/material.dart';

import '../../../../services_home/presentation/views/widgets/list_item.dart';
class GridItemSetting extends StatelessWidget {
  GridItemSetting({Key? key , required this.index}) : super(key: key);
  int index=0;
  @override
  Widget build(BuildContext context) {
    return HomeItem(
      text: services[index],
      imagePath: AssetImage(AssetData.setting[index],),
    );
  }

  final services = [
    "Credit Service",
    "Pre_Delivery Service",
    "Legal Services",
    "Entrance Activation",
    "Hosting Relatives",
    "Unit services",
    "Security Services",
  ];
}
