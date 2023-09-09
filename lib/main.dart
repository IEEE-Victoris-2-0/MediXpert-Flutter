import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_native_splash/flutter_native_splash.dart';
=======
import 'package:tecdoc/view/screen/splash.dart';
import 'package:tecdoc/view/screen/auth/signup.dart';
>>>>>>> 8ae95c54be9fa7ced0aa7e27663405efa9d1d0a5
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
<<<<<<< HEAD
        home: OnBoardingScreen());
=======
        home: SplashScreen());
>>>>>>> 8ae95c54be9fa7ced0aa7e27663405efa9d1d0a5
  }
}
