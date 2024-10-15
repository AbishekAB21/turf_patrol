import 'package:flutter/material.dart';
import 'package:turf_patrol/utils/fontstyles.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          // Background image
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splashscreenImage.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Title
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Turf Patrol.",
                  style: FontStyles.SplashScreenTitle(context),
                ),
              ),
            ),
          ),

          // Slogan
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 165),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "\"Life\’s better with a ball at your feet.\"",
                  style: FontStyles.SplashScreenSlogan(context),
                ),
              ),
            ),
          ),

          // Login text fields

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
              // make the colors file first
            ),
          )
        ],
      ),
    );
  }
}