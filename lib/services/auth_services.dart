
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
class AuthServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;
    Future SignIn({required email, required password}) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print(e.toString());
    }
  }
}
