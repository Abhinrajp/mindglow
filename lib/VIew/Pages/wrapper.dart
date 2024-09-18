import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mindglow/VIew/Screens/Auth/siginscreen.dart';
import 'package:mindglow/VIew/Screens/Home/homebottomnavigation.dart';
import 'package:mindglow/VIew/Screens/SplashScreens/splashscreenmain.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Homebottomnavigationbar();
          } else {
            return const Onboardscreen();
          }
        },
      ),
    );
  }
}
