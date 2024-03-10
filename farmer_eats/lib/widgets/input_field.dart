import 'package:flutter/material.dart';

TextField inputField(String hintText,Icon prefixIcon) {
  return TextField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black26),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: prefixIcon,
        hintText: hintText),
  );
}
