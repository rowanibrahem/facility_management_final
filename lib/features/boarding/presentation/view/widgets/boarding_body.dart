
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../constants.dart';
import 'item_builder.dart';
import 'last_boarding.dart';

class BoardingBody extends StatefulWidget {
  BoardingBody({Key? key}) : super(key: key);

  @override
  State<BoardingBody> createState() => _BoardingBodyState();
}

class _BoardingBodyState extends State<BoardingBody> {
  final pageController = PageController();

  int currentIndex = 0;

  // int flag=0;

  @override
  Widget build(BuildContext context) {
    return currentIndex != 2
        ? Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: InkWell(
                    onTap: () {
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(color: LIGHT_GREY, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // color: Colors.grey,
                    margin: EdgeInsets.symmetric(vertical: 12.5),
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: 3,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return ItemBuilder(
                          index: index,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    8,
                    8,
                    8,
                    MediaQuery.of(context).size.height / 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
                        axisDirection: Axis.horizontal,
                        effect: SlideEffect(
                            // spacing:  8.0,
                            // radius:  10.0,
                            // dotWidth:  15.0,
                            // dotHeight:  15.0,
                            // paintStyle:  PaintingStyle.fill,
                            // strokeWidth:  1.5,
                            dotColor: LightkPrimaryColor,
                            activeDotColor: kPrimaryColor),
                      ),
                      InkWell(
                        onTap: () {
                          if (currentIndex < 3) {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          } else {
                            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                          }
                        },
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width / 14,
                          backgroundColor: kPrimaryColor,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        : LastBoarding();
  }
}
