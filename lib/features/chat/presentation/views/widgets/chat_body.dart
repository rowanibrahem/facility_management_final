
import 'package:facility/features/chat/presentation/views/widgets/stack_body.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shared_widgets/custom_buttom.dart';
import '../success_view.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width/20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: ChatStack()),
          SizedBox(
            height: MediaQuery.of(context).size.height/14,
          ),
          CustomButton(
              width: MediaQuery.of(context).size.width*.7,
              backgroundColor: kPrimaryColor,
              text: 'Send',
              func: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatSuccess()),
                );
              }
          ),
        ],
      ),
    );
  }
}
