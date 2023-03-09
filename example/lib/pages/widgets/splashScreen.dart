import 'package:example/pages/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
      splash: Column(
        children: [Image.asset('asset/images/travel_world.json'),
        Text("hello world",style: TextStyle(fontSize:40.0,fontWeight: FontWeight.bold))],
      ),
      nextScreen: const HomeScreen()),
    );
  }
}
