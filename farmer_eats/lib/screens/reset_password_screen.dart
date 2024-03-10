import 'package:farmer_eats/widgets/button.dart';
import 'package:flutter/material.dart';

import '../widgets/input_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FarmerEats"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            txtForgot(),
            const SizedBox(
              height: 30,
            ),
            txtRemeberPass(),
            SizedBox(
              height: 50,
            ),
            inputField('New password', Icon(Icons.lock)),
            SizedBox(
              height: 50,
            ),
            inputField('Confirm New Password', Icon(Icons.lock)),
            SizedBox(
              height: 50,
            ),
            CustomButton('SUBMIT')
          ],
        ),
      ),
    );
  }
}

RichText txtRemeberPass() {
  return RichText(
    text: const TextSpan(
        text: 'Remember your password?',
        style: TextStyle(color: Colors.black38),
        children: [
          TextSpan(
            text: 'Login',
            style: TextStyle(color: Colors.orange),
          )
        ]),
  );
}

Text txtForgot() {
  return const Text(
    "Forgot password?",
    style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
  );
}
