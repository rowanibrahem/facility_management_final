import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class SelectContainer extends StatelessWidget {
  const SelectContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0).h,
      child: Container(
        padding: const EdgeInsets.all(7),
        height: 56.h,
        decoration: BoxDecoration(
          border: Border.all(color: LIGHT_GREY),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("MG Development"),
            Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
    );
  }
}