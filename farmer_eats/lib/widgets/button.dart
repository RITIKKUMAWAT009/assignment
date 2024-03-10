import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
final String s;
const  CustomButton(this.s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 213, 113, 91))),
        onPressed: () {},
        child:  Text(
          s,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}