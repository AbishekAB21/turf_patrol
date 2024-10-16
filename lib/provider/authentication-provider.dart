import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turf_patrol/screens/home-screen.dart';
import 'package:turf_patrol/utils/app-colors.dart';
import 'package:turf_patrol/widgets/reusable-snackbar.dart';

class AuthenticationProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> logIn(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
      ReusableSnackbar().showSnackbar(
          context, "Logged in Succesfully", appcolor.successColor);
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if(e.code == 'invalid-email'){
        ReusableSnackbar().showSnackbar(
          context, "User not found", appcolor.errorColor);
      }else if(e.code == 'wrong-password'){
        ReusableSnackbar().showSnackbar(
          context, "Incorrect Password", appcolor.errorColor);
      }else{
        ReusableSnackbar().showSnackbar(
          context, "${e.code}", appcolor.errorColor);
      }
    }
  }
}
