import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';


class AuthServices {
  Timer? timer;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future SignIn({required email, required password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  Future Signup({required email, required password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User? user = FirebaseAuth.instance.currentUser;
      Fluttertoast.showToast(msg: "SENT");
      user!.sendEmailVerification();
      
    } catch (e) {
      print(e.toString());
    }
  }

  Future forgotPas({required email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }

  SignOut() {
    _auth.signOut();
  }
}
