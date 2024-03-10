import 'package:flutter/material.dart';

RichText CustomRichText(String firstText,String secondText) {
  return RichText(
    text:  TextSpan(
        text: firstText,
        style: TextStyle(color: Colors.black38),
        children: [
          TextSpan(
            text: secondText,
            style: TextStyle(color: Colors.orange),
          )
        ]),
  );
}
