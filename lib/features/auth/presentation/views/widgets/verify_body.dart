
import 'package:facility/features/auth/presentation/views/widgets/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../../../../../core/utilies/styles.dart';

class VerifyBody extends StatefulWidget {
  const VerifyBody({Key? key}) : super(key: key);

  @override
  State<VerifyBody> createState() => _VerifyBodyState();
}

class _VerifyBodyState extends State<VerifyBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Verification',
            style: Styles.textStyle27,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
              'Enter 4-digit number that',
            style: Styles.textStyle22,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'sent to +2011221****',
            style: Styles.textStyle22,
          ),
          const SizedBox(
            height: 30,
          ),
          const VerifyOtp(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: CustomButton(
              width: MediaQuery.of(context).size.width*.7,
              backgroundColor: kPrimaryColor,
              text: 'Continue',
              func: () {
                GoRouter.of(context).push('/homeView');
              },
            ),
          ),
        ],
      ),
    );
  }
}
