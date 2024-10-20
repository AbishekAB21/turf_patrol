import 'package:flutter/material.dart';
import 'package:turf_patrol/screens/auth-page.dart';
import 'package:turf_patrol/utils/fontstyles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goHome(context);
  }
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
        ],
      ),
    );
  }
}

Future<void> goHome(BuildContext context) async {
  await Future.delayed(Duration(seconds: 2));

  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => AuthPage(),
      ));
}
