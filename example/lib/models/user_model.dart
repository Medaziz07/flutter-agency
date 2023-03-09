import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart ' as http;

class UserModel with ChangeNotifier{
  String? uid;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? age;

  UserModel(
      {this.uid, this.name, this.email, this.password, this.phone, this.age});

//data from server firebase
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      name: map['uid'],
      email: map['uid'],
      phone: map['uid'],
      age: map['uid'],
    );
  }

  //sending data to our firebase

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'age': age
    };
  }

 Future<void> fetchData() async {
    final url =
        "https://travtel-4e717-default-rtdb.firebaseio.com/users.json";

    try {
      final http.Response res = await http.get(Uri.parse(url));
      print(json.decode(res.body));
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
  
}
