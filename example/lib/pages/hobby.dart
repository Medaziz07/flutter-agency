// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:example/pages/home_screen.dart';
import 'package:example/pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../helper/BouncyAnimation.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HobbyPage()));

class HobbyPage extends StatefulWidget {
  @override
  _HobbyPage createState() => _HobbyPage();
}

class _HobbyPage extends State<HobbyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/travel_world.json'),
      
      nextScreen: const HomeScreen(),
      splashIconSize: 250,
      duration: 1500,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: Duration(seconds: 2),
    );
  }
}
