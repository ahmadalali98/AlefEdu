import 'package:flutter/material.dart';

class AppSize {
  static double width = 0;
  static double height = 0;

  static void setSize(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
