import 'package:flutter/material.dart';
import 'package:turf_patrol/utils/app-colors.dart';
import 'package:turf_patrol/utils/fontstyles.dart';

class ReusableButton extends StatelessWidget {
  final String title;
  void Function()? ontap;
  ReusableButton({super.key, required this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: appcolor.borderColor,
          borderRadius: BorderRadius.circular(10),
          backgroundBlendMode: BlendMode.luminosity
        ),
        child: Center(
            child: Text(
          title,
          style: FontStyles.buttonTextStyle(),
        )),
      ),
    );
  }
}
