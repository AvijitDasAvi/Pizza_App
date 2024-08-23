import 'package:flutter/material.dart';

class AppWidget {
  static backgroundColor() {
    return Color.fromARGB(255, 224, 207, 48);
  }

  static TextStyle boldTextFieldStyle() {
    return TextStyle(
      fontSize: 15.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle headlineTextFieldStyle() {
    return TextStyle(
      fontSize: 24.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle lightTextFieldStyle() {
    return TextStyle(
      fontSize: 15.0,
      color: Colors.black38,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle semiBoldTextFieldStyle() {
    return TextStyle(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle storeName() {
    return TextStyle(
      fontSize: 22.0,
      fontFamily: 'Matemasie',
      fontWeight: FontWeight.bold,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0
        ..color = Colors.red,
    );
  }
}
