// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:example/helper/BouncyAnimation.dart';
import 'package:example/pages/hobby.dart';
import 'package:example/pages/login.dart';
import 'package:example/pages/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HomePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/travel.png",
                        width: 80.0,
                      ),
                      const Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 30,
                            height: 3,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),

                  Image.asset(
                    'assets/home1.png',
                    width: 250.0,
                  ),
                  Row(children: const <Widget>[
                    // ignore: unnecessary_const
                    const Expanded(
                      child: Divider(
                        indent: 150.0,
                        endIndent: 150,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  Text(
                    "Life is Only Once, Enjoy Your Life",
                    style: TextStyle(fontFamily: 'RobotoMono', fontSize: 18.0),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        indent: 150.0,
                        endIndent: 150,
                        color: Colors.black,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: Column(children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 160,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          gradient: LinearGradient(
                            // ignore: prefer_const_literals_to_create_immutables
                            colors: [
                              Colors.black45,
                              Colors.blue,
                              Colors.blueGrey
                            ],
                            begin: FractionalOffset.centerLeft,
                            end: FractionalOffset.centerRight,
                          ),
                        ),
                        child: ElevatedButton (
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, BouncyPageRoute(widget: RegistrationScreen()));
                          },
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(children: <Widget>[
                    Expanded(child: Divider()),
                    Text("OR"),
                    Expanded(child: Divider()),
                  ]),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: OutlineGradientButton(
                      child: Text('Sign In',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      gradient: SweepGradient(
                        colors: [Colors.black45, Colors.blue, Colors.blueGrey],
                      ),
                      onTap: () {
                        Navigator.push(
                            context, BouncyPageRoute(widget: LoginScreen()));
                      },
                      strokeWidth: 2,
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 12),
                      radius: Radius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
