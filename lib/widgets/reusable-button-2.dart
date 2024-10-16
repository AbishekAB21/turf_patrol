import 'package:flutter/material.dart';
import 'package:turf_patrol/utils/app-colors.dart';
import 'package:turf_patrol/utils/fontstyles.dart';

class ReusableButton2 extends StatelessWidget {
  final String title;
  void Function()? ontap;
  ReusableButton2({super.key, required this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(5),
        width: 100,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: appcolor.borderColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          title,
          style: FontStyles.buttonTextStyle2(),
        )),
      ),
    );
  }
}
