import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/app_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppWidget.backgroundColor(),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/Photos/pizza_logo.png",
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
