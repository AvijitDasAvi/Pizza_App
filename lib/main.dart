import 'package:flutter/material.dart';
import 'package:pizza_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PIZZA MANIA",
      home: SplashScreen(),
    );
  }
}
