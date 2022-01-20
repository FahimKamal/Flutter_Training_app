import 'package:flutter/material.dart';

final FormDecoration = InputDecoration(
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 3),
      borderRadius: BorderRadius.circular(10)
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 3),
      borderRadius: BorderRadius.circular(10)
  ),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 3),
      borderRadius: BorderRadius.circular(10)
  ),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 3),
      borderRadius: BorderRadius.circular(10)
  ),
  fillColor: Colors.greenAccent.withOpacity(0.2),
  filled: true,
);