import 'package:flutter/material.dart';
import 'package:ui_test/constants/color_const.dart';

class CustumItemCard extends StatelessWidget {
  const CustumItemCard({
    required this.imageurl,
    super.key,
    required this.text,
  });

  final String imageurl;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width * 0.45,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade100,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 75,
          child: SizedBox(
            height: size.height * 0.2,
            width: size.width * 0.38,
            child: Image.asset(imageurl),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 5,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kyellow,
            ),
            child: Icon(Icons.add),
          ),
        ),
        Positioned(
            bottom: 50,
            left: 50,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
