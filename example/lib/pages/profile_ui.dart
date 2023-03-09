import 'package:example/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:example/models/user_model.dart';
//

class Profile_ui extends StatefulWidget {
  const Profile_ui({Key? key}) : super(key: key);

  @override
  State<Profile_ui> createState() => _Profile_uiState();
}

class _Profile_uiState extends State<Profile_ui> {
  /// CURRENT FIREBASE USER
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    /// CURRENT WIDTH AND HEIGHT
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    ///
    return Scaffold(
      /// APP BAR
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: w,
        child: Column(
          children: [
            /// FLUTTER IMAGE
            Container(
              margin: const EdgeInsets.only(right: 35, bottom: 20, top: 20),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/avatar.png"),
                ),
              ),
              height: h / 4,
              width: w / 1.5,
            ),

            /// WELCOME TEXT
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: const Text(
                "Welcome jbeli",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "phone number:97683703",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Age:25",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            /// SIGN IN TEXT
            Text(
              "signed In as: " + user.email!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            /// LOG OUT BUTTON

            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: const Text("Log out"),
            ),
          ],
        ),
      ),
    );
  }
}
