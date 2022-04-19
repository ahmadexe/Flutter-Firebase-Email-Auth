import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../services/auth_services.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({ Key? key }) : super(key: key);
  final emailController = TextEditingController();
  AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: emailController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                  labelText: "Email", hintText: "Enter Your email"),
            ),
            
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  _auth.forgotPas(email: emailController.text.trim());
                  Get.back();
                },
                child: Container(
                  width: 70,
                  height: 60,
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Reset!"),
                  ),
                ),
              ),
            ),           
          ],
        ),
      ),
    );
  }
}