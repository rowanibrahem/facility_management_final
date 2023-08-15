import 'package:flutter/cupertino.dart';

class DiscoverBottomWidgetTextAndIcon extends StatelessWidget {
  const DiscoverBottomWidgetTextAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(CupertinoIcons.phone_fill,color: CupertinoColors.black,size: 20,),

        Text('0111143678,01045...',style: TextStyle(
          fontSize: 13,

        ),),


      ],
    );
  }
}
