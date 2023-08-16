import 'package:facility_management/core/utilies/assets.dart';
import 'package:facility_management/features/home/widgets/furnitureScreenListView.dart';
import 'package:facility_management/features/home/widgets/smallWidgets/discoverScreenListview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class DiscoverScreenUI extends StatelessWidget {
 const  DiscoverScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Offers and Deals',style:
              TextStyle(
                color: CupertinoColors.black,
                fontSize: 15
              ),
              ),
              Text('See more',style: TextStyle(
                color: kPrimaryColor,
                fontSize: 12
              ),),

            ],
          ),
      const   FurnitureScreenListview(
           textOne: AssetData.discoverScreenAddress,
           images: AssetData.discoverScreenImages,
           bottomWidget: Text('15% off',style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold
           ),),
           topWidget: SizedBox(),

         ),

          const Text("Categories",style: TextStyle(
              color: CupertinoColors.black,
              fontSize: 15
          ),),

          Expanded(child: DiscoverScreenListview())




        ],
      ),
    );
  }
}
