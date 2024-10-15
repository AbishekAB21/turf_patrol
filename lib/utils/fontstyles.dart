import 'package:flutter/material.dart';

class FontStyles {
  static TextStyle SplashScreenTitle(BuildContext context) {
    return TextStyle(
      fontSize: 50,
      fontFamily: "Russo One",
      color: Colors.blueGrey.shade800,
    );
  }

  static TextStyle SplashScreenSlogan(BuildContext context) {
    return TextStyle(
      fontSize: 13,
      fontFamily: "Russo One",
      color: Colors.blueGrey.shade800,
    );
  }

  static TextStyle lightTextStyle() {
    return TextStyle(
        color: Colors.white70,
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        fontFamily: "Poppins");
  }

   static TextStyle BiggerlightTextStyle() {
    return TextStyle(
        color: Colors.white70,
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        fontFamily: "Poppins");
  }

  static TextStyle buttonTextStyle() {
    return TextStyle(
        color: Colors.blueGrey.shade800,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins");
  }

  static TextStyle buttonTextStyle2() {
    return TextStyle(
        color: Colors.blueGrey.shade800,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins");
  }
}
