import 'package:flutter/material.dart';
import '../../../../../core/utilies/assets.dart';
import '../../services_home/presentation/views/widgets/list_item.dart';



class HomeServiceList extends StatelessWidget {
  HomeServiceList({Key? key,}) : super(key: key);

  final services1 = [
    "Pay a bill",
    "Request service",
    "Security",
    "Rating",
    "News",
  ];

  final services2 = [
    "Grocery shop ",
    "Complain",
    "ادارة الممتلكات" ,
    "تصاريح",
    "اجراءات"
  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
      child: SizedBox(
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return  Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: HomeItem(num: 1.8,
                        imagePath: AssetImage(AssetData.homeServices1[index]),
                        text: services1[index],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                      child: HomeItem(num: 1.8,
                        imagePath: AssetImage(AssetData.homeServices2[index]),
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
