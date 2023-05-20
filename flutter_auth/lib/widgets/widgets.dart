import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: (Colors.redAccent), width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: (Colors.blueAccent), width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: (Colors.red), width: 2),
    ));
