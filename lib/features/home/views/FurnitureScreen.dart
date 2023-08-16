import 'package:facility_management/core/utilies/assets.dart';
import 'package:facility_management/features/home/widgets/smallWidgets/discoverScreenBottomWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../core/shared_widgets/appbar2.dart';

class FurnitureScreen extends StatelessWidget {
  const FurnitureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom2(
          text: 'Furniture',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children:
                  [
                  const  Padding(
                      padding: EdgeInsets.all(8.0),
                      child:  Row(
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
                    ),

                SizedBox(
                  height: MediaQuery.of(context).size.height*1,
                  width: MediaQuery.of(context).size.width*1,
                  child: ListView.builder(
                    physics:const  NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height*0.15,
                              width: MediaQuery.of(context).size.width*0.8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,
                                      color: Colors.grey)
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.all( 10),
                                child:
                                Stack(
                                  children: [
                                    Positioned(
                                        left: 5,
                                        child: SizedBox(
                                            height: MediaQuery.of(context).size.height*0.1,
                                            width: MediaQuery.of(context).size.width*0.23,
                                            child: Image.asset(AssetData.discoverScreenImages[index],fit: BoxFit.fill,))),

                                    Positioned(
                                        left: 120,
                                        top: 10,
                                        child: Text(AssetData.discoverScreenAddress[index],style: const TextStyle(fontSize: 15),)),


                                    Positioned(
                                      left: 120,
                                      top: 35,
                                      child: SizedBox(
                                        width:MediaQuery.of(context).size.width*0.4,

                                        child: const Text('Furniture and interior Design',
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey
                                          ),),


                                      ),
                                    ),


                                  const  Positioned(
                                        left: 120,
                                        bottom: 10,
                                        child: DiscoverBottomWidgetTextAndIcon()),


                                  const   Positioned(
                                        top: 30,
                                        right: 20,
                                        child: SizedBox()),

                                    Positioned(
                                      bottom: 7,
                                      right: 16,
                                      child: Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kPrimaryColor
                                          ),
                                          child: const Icon(Icons.arrow_forward_ios,color: Colors.white ,)),
                                    ),
                                  ],
                                ),
                              )
                          ),
                        );
                      }
                  ),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
