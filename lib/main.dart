import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/splash.dart';
import 'package:tecdoc/view/screen/auth/signup.dart';
import 'package:tecdoc/view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "midxipert",
        home: SplashScreen());
  }
}
