import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilies/styles.dart';

class Receit extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Payment Successful",
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 100,
        ),
        Text(
          "Bill number : B83423478",
          style: Styles.textStyle12.copyWith(color: LIGHT_GREY),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: headers.length,
              itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          headers[index],
                          style: Styles.textStyle12.copyWith(color: LIGHT_GREY),
                        ),
                        Text(
                          data[index],
                          style: index != 4
                              ? Styles.textStyle12
                              : Styles.textStyle12
                                  .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
        )
      ],
    );
  }

  var headers = [
    "Date",
    "Time",
    "Water access code",
    "Customer name",
    "Total amount",
    "Paid",
    "Remaining"
  ];
  var data = [
    "January 16, 2022",
    "04:35 PM",
    "000123742",
    "Loaa hany",
    "1200.50 EGB",
    "1000.00 EGB",
    "200.50 EGB"
  ];
}
