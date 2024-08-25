import 'package:flutter/material.dart';
import 'package:pizza_app/screens/home_screen.dart';
import 'package:pizza_app/screens/signup_screen.dart';
import 'package:pizza_app/widgets/app_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
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
                obscureText: _obscureText,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
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
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Matemasie',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "-------------or-------------",
              style: AppWidget.lightTextFieldStyle(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        height: 50.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 94, 255),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/photos/facebook.png",
                                height: 40.0,
                                width: 40.0,
                              ),
                              Text(
                                "Facebook",
                                style: AppWidget.semiBoldTextFieldStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        height: 50.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 43, 157, 250),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/photos/instagram.png",
                              height: 30.0,
                              width: 30.0,
                            ),
                            Text(
                              "Instagram",
                              style: AppWidget.semiBoldTextFieldStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Text(
              "Create account ? ",
              style: AppWidget.lightTextFieldStyle(),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
