import 'package:flutter/material.dart';

InputDecoration textfileStyle(String labeltext) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    labelText:  labeltext,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15)
    ),
     );
}