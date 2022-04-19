import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_auth/services/auth_services.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  AuthServices _auth = AuthServices();
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          Text(user.email!),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              _auth.SignOut();
            },
            child: Container(
              height: 80,
              width: 80,
              child: const Text("Logout"),
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
