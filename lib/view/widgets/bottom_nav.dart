import 'package:flutter/material.dart';
import 'package:ui_test/constants/color_const.dart';

class CustumBottomNavBar extends StatelessWidget {
  const CustumBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12,
      decoration: BoxDecoration(
        color: kwhite,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: size.height * 0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 81, 16, 150),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(200),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: kwhite,
                      size: 30,
                    ),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: kwhite,
                      size: 30,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.person_3_outlined,
                      color: kwhite,
                      size: 30,
                    ),
                    Icon(
                      Icons.mark_as_unread_sharp,
                      color: kwhite,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 80,
              width: 70,
              decoration: BoxDecoration(
                boxShadow: [],
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.home_outlined),
              ),
            ),
          )
        ],
      ),
    );
  }
}
