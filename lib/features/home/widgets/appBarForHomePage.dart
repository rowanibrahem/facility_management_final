import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utilies/styles.dart';

class AppBarForHomePage extends StatefulWidget  implements PreferredSizeWidget {
final double sizedBoxWidth ;
  final String text;
  Widget? columnText;
  AppBarForHomePage({Key? key, required this.text,this.columnText , required this.sizedBoxWidth}) : super(key: key);

  @override
  State<AppBarForHomePage> createState() => _AppBarForHomePageState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarForHomePageState extends State<AppBarForHomePage> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:const SizedBox(),
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(width: widget.sizedBoxWidth.w,),
            widget.columnText==null? Text(
              widget.text,
              style: Styles.textStyle15.copyWith(fontSize: 16 , color: Colors.black),
            ) : widget.columnText!,
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 45,
                  height: 90,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Set the shadow color
                        spreadRadius: 2, // Set the spread radius of the shadow
                        blurRadius: 6, // Set the blur radius of the shadow
                        offset: const Offset(0, 3), // Set the offset of the shadow
                      ),
                    ],
                  ),
                  child:
                  Image.asset(
                    'assets/images/noticon.png',
                    fit: BoxFit.scaleDown,
                  ),
                  //const Icon(Icons.notifications_active)

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}