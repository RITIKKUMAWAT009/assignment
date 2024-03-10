import 'package:farmer_eats/widgets/button.dart';
import 'package:farmer_eats/widgets/custom_rich_text.dart';
import 'package:farmer_eats/widgets/input_field.dart';
import 'package:flutter/material.dart';

class VerifyCScreen extends StatelessWidget {
  const VerifyCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("farmerEats"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                txtVerify(),
                const SizedBox(
                  height: 32,
                ),
                CustomRichText("Remember your password?", 'Login'),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                          )),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: inputField('', Icon(null)),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: inputField('', Icon(null)),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: inputField('h', Icon(null)),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: inputField('', Icon(null)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton('SUBMIT'),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print('resend');
                    },
                    child: Text(
                      'Resend Code',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

Text txtVerify() {
  return const Text(
    "Verify OTP",
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  );
}
