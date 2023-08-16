import 'package:facility_management/features/home/views/FurnitureScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utilies/assets.dart';
import '../../../services_home/presentation/views/widgets/list_item.dart';




class DiscoverScreenListview extends StatelessWidget {
  DiscoverScreenListview({Key? key,}) : super(key: key);

  final services1 = [
    "Furniture",
    "Retail Services",
  ];

  final services2 = [
    "Banking and Insurance",
    "Short Numbers",
  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
<<<<<<< HEAD
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 0),
=======
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
>>>>>>> origin/master
      child: SizedBox(
        child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return  Row(
                children: [
                  Expanded(
                    child: Padding(
<<<<<<< HEAD
                      padding: const EdgeInsets.only(right: 7,top: 10),
                      child: GestureDetector(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  const FurnitureScreen()));
=======
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const FurnitureScreen()));
>>>>>>> origin/master

                        },
                        child: HomeItem(num: 1.8,
                          imagePath: AssetImage(AssetData.discoverScreenListviewImages1[index]),
                          text: services1[index],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
<<<<<<< HEAD
                      padding: const EdgeInsets.only(
                          left: 7,
                      top: 10),
=======
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
>>>>>>> origin/master
                      child: HomeItem(num: 1.8,
                        imagePath: AssetImage(AssetData.discoverScreenListviewImages2[index]),
                        text: services2[index],
                      ),
                    ),
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
}
