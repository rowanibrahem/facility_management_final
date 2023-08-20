import 'package:flutter/material.dart';

import '../../constants.dart';

class AppBarButtom extends StatefulWidget  implements PreferredSizeWidget {
  const AppBarButtom({Key? key}) : super(key: key);

  @override
  State<AppBarButtom> createState() => _AppBarButtomState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarButtomState extends State<AppBarButtom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SizedBox(),
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Colors.white,
                      weight: 100.0,
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context
                      ); // Replace with the desired navigation action
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: lightWhiteColor,
                    borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  ),
                  child: Center(
                    child: const Text(
                      'العربية',

                         ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            // ClipOval(
            //   child: Container(
            //     width: 40,
            //     height: 40,
            //     color: lightWhiteColor,
            //     child: const Text(
            //       'العربية',
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}