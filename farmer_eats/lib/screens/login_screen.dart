import 'package:farmer_eats/widgets/button.dart';
import 'package:farmer_eats/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("farmerEats"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              txtWelcome(),
              const SizedBox(
                height: 32,
              ),
              CustomRichText('New here?', 'Create account'),
              const SizedBox(
                height: 30,
              ),
              emailField(),
              const SizedBox(
                height: 32,
              ),
              passwordField(),
              const SizedBox(
                height: 30,
              ),
              CustomButton('Login'),
              const SizedBox(
                height: 30,
              ),
              Text('Or login with'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: Icon(Icons.apple),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

Text txtWelcome() {
  return const Text(
    "Welcome back!",
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  );
}

TextFormField passwordField() {
  return TextFormField(
    obscureText: true,
    decoration: const InputDecoration(
      suffixText: 'Forgot?',
      suffixStyle: TextStyle(color: Colors.orange),
      prefixIcon: Icon(Icons.lock),
      labelText: 'Password',
      hintText: 'Password',
      labelStyle: TextStyle(color: Colors.black),
      hintStyle: TextStyle(color: Colors.grey),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
    ),
  );
}

TextFormField emailField() {
  return TextFormField(
    decoration: const InputDecoration(
      prefixIcon: Icon(Icons.email_rounded),
      labelText: 'Email Address',
      hintText: 'Enter your email address',
      labelStyle: TextStyle(color: Colors.black),
      hintStyle: TextStyle(color: Colors.grey),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
    ),
  );
}
