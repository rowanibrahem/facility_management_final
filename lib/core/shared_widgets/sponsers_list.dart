import 'package:flutter/material.dart';

import '../utilies/assets.dart';
class SponsersList extends StatelessWidget {

  final double? width;
  final double? height;
  const SponsersList({Key? key,  this.width,  this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AssetData.sponsers.length,
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetData.sponsers[index],fit: BoxFit.fill,
            width: width,
            height: height,
          ),
        ));
  }
}
