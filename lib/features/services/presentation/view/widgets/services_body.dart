import 'package:flutter/material.dart';

import 'grid_item.dart';
class ServicesBody extends StatelessWidget {
  const ServicesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
       ),
          itemCount: 6,
          itemBuilder: (context , index)=>
              Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridItem(index: index,),
      )

      ),
    );
  }
}
