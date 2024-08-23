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
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Photos/pizza_logo.png",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    children: [
                      Text(
                        "Pizza Mania",
                        style: AppWidget.storeName(),
                      ),
                      Text(
                        "Best Pizza House",
                        style: AppWidget.lightTextFieldStyle(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Email",
                  labelStyle: AppWidget.boldTextFieldStyle(),
                  hintText: "Enter Email",
                  hintStyle: AppWidget.lightTextFieldStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                maxLines: 1,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Password",
                  labelStyle: AppWidget.boldTextFieldStyle(),
                  hintText: "Enter Password",
                  hintStyle: AppWidget.lightTextFieldStyle(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
