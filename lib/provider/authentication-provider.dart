import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turf_patrol/utils/app-colors.dart';
import 'package:turf_patrol/widgets/reusable-snackbar.dart';

class AuthenticationProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> logIn( 
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
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
        print(e);
        ReusableSnackbar().showSnackbar(
          context, "${e.code}", appcolor.errorColor);
      }
    }
  }

   Future<void> signUp( 
      String email, String password, BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
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
        print(e);
        ReusableSnackbar().showSnackbar(
          context, "${e.code}", appcolor.errorColor);
      }
    }
  }
}
