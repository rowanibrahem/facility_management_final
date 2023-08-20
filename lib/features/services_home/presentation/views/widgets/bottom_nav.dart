
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import '../../../../../constants.dart';
import '../../../../chat/presentation/views/chat_view.dart';
import '../../../../pay_history/presentation/views/history1_view.dart';
import '../home_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with TickerProviderStateMixin {
  int currentindex = 0;
  final List<Widget> _tabs = const [
    HomeView(),
    PayHistoryView(),
    ChatView(),
  ];
  Widget currentScreen = const HomeView();
  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return Scaffold(
      extendBody: true,
      body: _tabs[currentindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          marginR: const EdgeInsets.symmetric(horizontal: 20),

          currentIndex: currentindex,
          onTap: (index){
            setState(() {
              currentindex = index;
            });
          },
          margin: const EdgeInsets.only(left: 10, right: 10),
          // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          // onTap: _handleIndexChanged,
          dotIndicatorColor: kPrimaryColor,
          items: [
            DotNavigationBarItem(
              icon: const  Icon(Icons.home),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: Image.asset(
                  'assets/icons/vuesax-bold-graph.png',
                      ),
              selectedColor: kPrimaryColor,
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: kPrimaryColor,
            ),
          ],

        ),
      ),
    );
  }
}
