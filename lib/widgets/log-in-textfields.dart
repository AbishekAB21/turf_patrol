import 'package:flutter/material.dart';
import 'package:turf_patrol/utils/app-colors.dart';
import 'package:turf_patrol/utils/fontstyles.dart';

class ReusableTextFields extends StatelessWidget {
  final String title;
  final controller;
  final bool encryptedText;
  final Icon prefixicon;
  const ReusableTextFields(
      {super.key,
      required this.title,
      required this.controller,
      required this.encryptedText,
      required this.prefixicon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        style: FontStyles.lightTextStyle(),
        obscureText: encryptedText,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: appcolor.borderColor)),
            isDense: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: appcolor.borderColor2)),
            hintText: title,
            hintStyle: FontStyles.lightTextStyle(),
            label: Text(
              title,
              style: FontStyles.lightTextStyle(),
            ),
            hintFadeDuration: Durations.medium2,
            prefixIcon: prefixicon,
            prefixIconColor: appcolor.borderColor
            ),
      ),
    );
  }
}
