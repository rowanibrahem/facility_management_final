import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../core/utilies/assets.dart';

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
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.height*1,
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

            const  SizedBox(height: 100,),
            const  Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text('Description',
                          style: TextStyle(
                              fontSize: 18,
                              color: CupertinoColors.black
                          ),),),

                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                          " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",style:
                      TextStyle(
                          fontSize: 14,color: Colors.grey
                      ),
                      overflow:TextOverflow.ellipsis ,
                      maxLines: 2,
                      ),

                      SizedBox(height: 23,),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text('Address',style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.black
                        ),),
                      ),
                      Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. "
                          "The point of using Lorem Ipsum is that it has", overflow:TextOverflow.ellipsis ,
                        maxLines: 2,style: TextStyle(
                            fontSize: 14,color: Colors.grey
                        ),),

                      SizedBox(height: 23,),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text('Working Days', style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.black
                        ),),
                      ),
                      Text('All Week Days',overflow:TextOverflow.ellipsis ,
                        maxLines: 2, style: TextStyle(
                          fontSize: 14,color: Colors.grey
                      ),),
                      SizedBox(height: 23,),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text('Working Hours', style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.black
                        ),),
                      ),
                      Text('9:00 am - 5:00 pm', overflow:TextOverflow.ellipsis ,
                        maxLines: 2,style: TextStyle(
                          fontSize: 14,color: Colors.grey
                      ),),
                      SizedBox(height: 23,),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text('Numbers',
                            style: TextStyle(
                                fontSize: 18,
                                color: CupertinoColors.black
                            )
                        ),
                      ),
                      Text(""" 01146475874
 01017757666
 02054778547                
                       """, style: TextStyle(
                          fontSize: 14,color: Colors.grey
                      ),),

                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
