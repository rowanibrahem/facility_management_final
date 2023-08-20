import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import '../../../core/shared_widgets/appbar2.dart';
import '../../../core/utilies/assets.dart';
import '../widgets/tapBar.dart';

class LaZBoyScreen extends StatefulWidget {
  const LaZBoyScreen({super.key, required this.index , required this.heartColor });
final int index ;
final bool heartColor ;
  @override
  State<LaZBoyScreen> createState() => _LaZBoyScreenState();
}

class _LaZBoyScreenState extends State<LaZBoyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Scaffold(
              backgroundColor: lIGHT_BACKGROUND,
              appBar: AppBarButtom2(
          text: 'La-Z-boy',
        ),
        body:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height*0.25.h,
                  width: MediaQuery.of(context).size.height*1.w,
                  child: Image.asset(AssetData.discoverScreenImages[widget.index],fit: BoxFit.fill,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('La-Z-Boy',style: TextStyle(
                    fontSize: 20
                  ),),

                  Container(
                    padding: const EdgeInsets.all(8),

                    decoration: BoxDecoration(
                      color: lIGHT_BACKGROUND,
                      shape: BoxShape.circle,
                      boxShadow: [  BoxShadow(
                        color: Colors.grey.withOpacity(0.4), // Set the shadow color
                        spreadRadius: 2, // Set the spread radius of the shadow
                        blurRadius: 6, // Set the blur radius of the shadow
                        offset: const Offset(0, 3), // Set the offset of the shadow
                      ),]
                    ),
                    child: Icon(Icons.favorite_outlined, color: widget.heartColor? Colors.red : Colors.grey,size: 28,),
                  ) ,

                ],
              ),

            const  Expanded(child: SingleChildScrollView(child: Home_Custom_TabBar()))


            ],
          ),
        ),
      ),
    );
  }
}
