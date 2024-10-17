import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turf_patrol/provider/authentication-provider.dart';
import 'package:turf_patrol/screens/sign-up.dart';
import 'package:turf_patrol/utils/app-colors.dart';
import 'package:turf_patrol/utils/fontstyles.dart';
import 'package:turf_patrol/widgets/log-in-textfields.dart';
import 'package:turf_patrol/widgets/reusable-button-2.dart';
import 'package:turf_patrol/widgets/reusable-button.dart';

class LogInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthenticationProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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

          SingleChildScrollView(
            child: Column(
              children: [
                // Title
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Turf Patrol.",
                            style: FontStyles.SplashScreenTitle(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Slogan
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "\"Life\’s better with a ball at your feet.\"",
                      style: FontStyles.SplashScreenSlogan(context),
                    ),
                  ),
                ),

                // Login text fields container
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: appcolor.primaryColor.withOpacity(0.9),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "First thing's first, let's log in!",
                          style: FontStyles.BiggerlightTextStyle(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ReusableTextFields(
                          title: "E-Mail",
                          controller: emailController,
                          encryptedText: false,
                          prefixicon: Icon(Icons.email_rounded),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusableTextFields(
                          title: "Password",
                          controller: passwordController,
                          encryptedText: true,
                          prefixicon: Icon(Icons.password_rounded),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ReusableButton(
                          title: "Login",
                          ontap: () {
                            authProvider.logIn(emailController.text,
                                passwordController.text, context);
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Don't have an account?",
                          style: FontStyles.lightTextStyle(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusableButton2(
                          title: "Sign up",
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
