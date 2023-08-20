import 'package:flutter/cupertino.dart';

import '../../animation/fadeanimation.dart';
import 'griditem.dart';

class Grid_View_Categories extends StatelessWidget {
  const Grid_View_Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
return
    Padding(
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
    );
  }
}