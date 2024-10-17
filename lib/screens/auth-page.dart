import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turf_patrol/screens/home-screen.dart';
import 'package:turf_patrol/screens/log-in.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          
          // if user is logged in 
          if(snapshot.hasData){
            return HomeScreen();
          }


          // if user is NOT logged in 
          else{
            return LogInScreen();
          }
        },
      ),
    );
  }
}