import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 100,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "Email", hintText: "Enter Your email"),
          ),
          TextField(
            obscureText: true,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(labelText: "Password", hintText: "Enter Your Password"),
          ),
          SizedBox(
            height: 40,
          ),
          
        ],
      ),
    );
  }
}