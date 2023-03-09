git import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Future getCurrentUser() async {
  //   final User? user = auth.currentUser;
  //   final uid = user!.uid;
  //   // here you write the codes to input the data into firestore
  // }
  Future<String> getCurrentUser() async {
    return _firebaseAuth.currentUser!.uid;
  }
}
