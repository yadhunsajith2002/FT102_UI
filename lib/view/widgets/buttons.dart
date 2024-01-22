import 'package:flutter/material.dart';
import 'package:ui_test/constants/color_const.dart';

Container custumSortbutton() {
  return Container(
    height: 60,
    width: 80,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: kwhite,
    ),
    child: Center(
      child: Icon(
        Icons.sort,
        color: kyellow,
      ),
    ),
  );
}
