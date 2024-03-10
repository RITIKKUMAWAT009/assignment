import 'package:farmer_eats/widgets/input_field.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/custom_rich_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
            CustomRichText('Remember your password?','Login'),
            SizedBox(
              height: 50,
            ),
            inputField('Mobile Number', Icon(Icons.call)),
            SizedBox(
              height: 50,
            ),
            CustomButton('Send OTP')
          ],
        ),
      ),
    );
  }
}

Text txtForgot() {
  return const Text(
    "Forgot password?",
    style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
  );
}
