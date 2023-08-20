import 'package:flutter/cupertino.dart';

class History_Container_Content extends StatelessWidget {
  History_Container_Content({required this.Firstwidget,required this.Secondwidget});
  Widget Firstwidget;
  Widget Secondwidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Firstwidget,
        Secondwidget
      ],
    );
  }
}
