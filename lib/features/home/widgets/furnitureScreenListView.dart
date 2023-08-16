import 'package:flutter/material.dart';
import '../../../constants.dart';



class FurnitureScreenListview extends StatelessWidget {
  const FurnitureScreenListview({Key? key,
    required this.textOne,
    required this.bottomWidget,
    required this.images,
    required this.topWidget,

  }) : super(key: key);
  final Widget topWidget ;
  final List<String> textOne ;
  final List<String> images ;
  final Widget bottomWidget ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.15,
        width: MediaQuery.of(context).size.width*1,
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.1,
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
                             child: Image.asset(images[index],fit: BoxFit.fill,))),

                     Positioned(
                        left: 120,
                        top: 10,
                        child: Text(textOne[index],style: const TextStyle(fontSize: 15),)),


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


                    Positioned(
                        left: 120,
                        bottom: 10,
                        child: bottomWidget),


                     Positioned(
                         top: 30,
                         right: 20,
                         child: topWidget),

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
    );
  }
}
