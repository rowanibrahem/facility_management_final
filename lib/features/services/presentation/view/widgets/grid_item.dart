import 'package:flutter/material.dart';

import '../../../../../core/utilies/assets.dart';
import '../../../../services_home/presentation/views/widgets/list_item.dart';
class GridItem extends StatelessWidget {
   GridItem({Key? key , required this.index}) : super(key: key);
 int index=0;
  @override
  Widget build(BuildContext context) {
    return HomeItem(
      num: 2.8,
      text: services[index],
      imagePath: AssetImage(AssetData.services[index]),
    );
  }

   final services = [
    "Water",
    "Electricity",
    "Maintenance",
    "Parking",
    "Club Renewal",
    "Others"
  ];
}
