import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multivendor/Models/usermodel.dart';

class AuthProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  void login(String email, String password) {
    // Replace this with your authentication logic
    if (email == email && password == password) {
      _user = User(
        userId:,
        username: username,
        email: email,
        password: password,
      );

      notifyListeners();
    } else {
      throw Exception('Invalid email or password');
    }
  }

  void logout() {
    _user = null;
    notifyListeners();
  }

  // void register(String userId, String username, String email, String password) {
  //   // Replace this with your authentication logic
  //   _user = User(
  //     userId: userId,
  //     username: username,
  //     email: email,
  //     password: password,
  //   );
  //   notifyListeners();
  // }
   void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
