import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTextStyle extends GetxController{
   TextStyle textStyle (
      String fontFamily, Color color, double size, FontWeight fontWeight) {
    return TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: size,
        fontWeight: fontWeight);
  }
}
