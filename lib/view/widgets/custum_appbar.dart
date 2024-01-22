import 'package:flutter/material.dart';
import 'package:ui_test/constants/color_const.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: kwhite,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(-3, -3),
              ),
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(3, 3),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                      color: kblack, borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 20,
                  height: 5,
                  decoration: BoxDecoration(
                      color: kblack, borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.12,
          width: size.width * 0.5,
          child: Image.asset(
            "assets/foodie.png",
            color: kyellow,
          ),
        ),
        Container(
          height: 80,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.yellow, width: 2)),
          child: Center(
            child: Icon(Icons.search),
          ),
        ),
        SizedBox(
          width: 5,
        )
      ],
    );
  }
}
