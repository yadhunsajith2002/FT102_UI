import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_test/constants/color_const.dart';

TextStyle textStyle({Color? color, double? size, FontWeight? weight}) {
  return GoogleFonts.poppins(color: color, fontSize: size, fontWeight: weight);
}
