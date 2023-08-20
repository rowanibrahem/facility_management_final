import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../constants.dart';

class HomeListview extends StatefulWidget {
const HomeListview({super.key});

  @override
  State<HomeListview> createState() => _HomeListviewState();
}

class _HomeListviewState extends State<HomeListview> {

  List<String> images = [
    "assets/homeImages/Mask Group 8.png",
    "assets/homeImages/Mask Group 18.png",
    "assets/homeImages/Mask Group 82.png",
    "assets/homeImages/Mask Group 83.png"

  ];
  List<String> texts = [
    " The point of using Lorem Ipsum is that ",
    "content here', making it look like readable English",
    "If you are going to use a passage of Lorem Ipsum ",
    "combined with a handful of model sentence "

  ];
  
  
  List<Widget> imagesWidgets = [
    Image.asset(
      "assets/homeImages/Mask Group 8.png",
      fit: BoxFit.fill,),
    Image.asset(
      "assets/homeImages/Mask Group 18.png",

      fit: BoxFit.fill,),
    Image.asset(
      "assets/homeImages/Mask Group 82.png",

      fit: BoxFit.fill,),
    Image.asset(
      "assets/homeImages/Mask Group 83.png"

    ,fit: BoxFit.fill,),
  ] ;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index ){
       if(index == 0 ) {
         return Column(
        children: [
        const Row(children: [
           Text('Welcome, ', style: TextStyle(
               color: kPrimaryColor,
               fontSize: 20
           ),),
           Text('Loaa Hany', style: TextStyle(
               fontSize: 20
           ),),
         ],),

          SizedBox(
            height: MediaQuery.of(context).size.height*0.35,
            width: double.infinity,
            child: Stack(
              children: [

                //Photo
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.12,
                    width: MediaQuery.of(context).size.width*0.12,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle
                    ),
                    child: Image.asset(
                        'assets/homeImages/FB_IMG_1594741082303.jpg'),
                  ),
                ),

                //Admin
                const Positioned(
                    top: 42,left: 70,
                    child: Text('Admin',style: TextStyle(fontSize: 18),),
                ),


                const Positioned(top: 43,right: 1,child : Icon(Icons.more_horiz),),
                Positioned(
                    bottom: 50,
                    child: Container(

                        height: MediaQuery.of(context).size.height*0.2,

                        width: MediaQuery.of(context).size.width*0.96,

                      clipBehavior: Clip.antiAliasWithSaveLayer,

                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(10)

                        ),





                        child: Image.asset(images[index],fit: BoxFit.fill,))),


             Positioned(
                bottom: 20,
                child: Text(texts[index],style:
                const TextStyle(
                  fontSize: 15
                ),),
              )


              ],
            ),
          ),
        ],
      );
       } else {
         return
           SizedBox(
             height: MediaQuery.of(context).size.height*0.35,
             width: double.infinity,
             child: SizedBox(
               height: MediaQuery.of(context).size.height*0.35,
               width: double.infinity,
               child: Stack(
                 children: [

                   //Photo
                   Positioned(
                     child: Container(
                       height: MediaQuery.of(context).size.height*0.12,
                       width: MediaQuery.of(context).size.width*0.12,
                       clipBehavior: Clip.antiAlias,
                       decoration: const BoxDecoration(
                           shape: BoxShape.circle
                       ),
                       child: Image.asset(
                           'assets/homeImages/FB_IMG_1594741082303.jpg'),
                     ),
                   ),
                   const Positioned(top: 43,right: 1,child : Icon(Icons.more_horiz),),

                   //Admin
                   const Positioned(
                     top: 42,left: 70,
                     child: Text('Admin',style: TextStyle(fontSize: 18),),
                   ),

                   Positioned(
                       bottom: 50,
                       child:                     Container(

                           height: MediaQuery.of(context).size.height*0.2,

                           width: MediaQuery.of(context).size.width*0.96,

                           clipBehavior: Clip.antiAliasWithSaveLayer,

                           decoration: BoxDecoration(

                               borderRadius: BorderRadius.circular(10)

                           ),





                           child: Image.asset(images[index],fit: BoxFit.fill,))),


                   Positioned(
                     bottom: 25,
                     child: Text(texts[index],style:
                     const TextStyle(
                         fontSize: 15
                     ),),
                   )


                 ],
               ),
             ),
           );
       }
    },
    itemCount: 4,
    );
  }
}
