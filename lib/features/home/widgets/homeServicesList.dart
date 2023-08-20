import 'package:facility/features/home/widgets/smallWidgets/Grid_itemServices.dart';
import 'package:facility/features/home/widgets/smallWidgets/tasareeh.dart';

import 'package:flutter/material.dart';
import '../../../../../core/utilies/assets.dart';
import '../../services_home/presentation/views/widgets/list_item.dart';
import '../../setting/presentation/animation/fadeanimation.dart';
import '../../setting/presentation/views/widgets/griditem.dart';



class HomeServiceList extends StatelessWidget {
  HomeServiceList({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
        child: FadeAnimation(4,child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount:10 ,
            itemBuilder: (context , index)=>
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Tasareeh_View())
                      );
                    },
                    child: Grid_Item_Services(index: index,))
            )),)
    );
  }
}

//Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
//       child: SizedBox(
//         child: ListView.builder(
//             itemCount: 5,
//             scrollDirection: Axis.vertical,
//             itemBuilder: (context, index) {
//               return  Row(
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       child: HomeItem(num: 1.8,
//                         imagePath: AssetImage(AssetData.homeServices1[index]),
//                         text: services1[index],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
//                       child: HomeItem(num: 1.8,
//                         imagePath: AssetImage(AssetData.homeServices2[index]),
//                         text: services2[index],
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             }
//         ),
//       ),
//     );