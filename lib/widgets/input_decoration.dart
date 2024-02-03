// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

InputDecoration buildInputDecoration(String labelText, String hintText) {
  return InputDecoration(
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.blue
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: HexColor('#69639F'),
          width: 2.0
        ),
      ),
      labelText: labelText,
      hintText: hintText,
  );
}