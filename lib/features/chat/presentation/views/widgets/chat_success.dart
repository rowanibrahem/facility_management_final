
import 'package:facility/features/chat/presentation/views/widgets/stack_chat.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';

class SucessBody extends StatefulWidget {
  const SucessBody({Key? key}) : super(key: key);

  @override
  State<SucessBody> createState() => _SucessBodyState();
}

class _SucessBodyState extends State<SucessBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StackChat(),

        CustomButton(
            backgroundColor: kPrimaryColor,
            text: 'Return to home',
            func: (){
              GoRouter.of(context).push('/bottomNav');
            },
            width: MediaQuery.of(context).size.width*.7,
        ),
        ],
      ),
    );
  }
}
