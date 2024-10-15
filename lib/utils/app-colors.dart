import 'package:flutter/material.dart';

AppColor appcolor = AppDefaultColor();

abstract class AppColor {
  final Color primaryColor;
  final Color borderColor;
  final Color borderColor2;
  final Color secondaryColor;
  final Color teritiaryColor;

  AppColor({
    required this.primaryColor,
    required this.borderColor,
    required this.borderColor2,
    required this.secondaryColor,
    required this.teritiaryColor,
  });
}

class AppDefaultColor extends AppColor {
  AppDefaultColor()
      : super(
            primaryColor: Colors.blueGrey.shade800,
            borderColor: Colors.white70,
            borderColor2: Colors.white,
            secondaryColor: Colors.black,
            teritiaryColor: Colors.green);
}
