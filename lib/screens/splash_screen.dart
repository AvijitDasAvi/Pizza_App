import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pizza_app/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Lottie.asset("assets/Lottie/Animation - 1723998453080.json"),
      ),
      nextScreen: const LoginScreen(),
      duration: 3500,
      splashIconSize: 400,
      backgroundColor: const Color.fromARGB(255, 224, 207, 48),
    );
  }
}
