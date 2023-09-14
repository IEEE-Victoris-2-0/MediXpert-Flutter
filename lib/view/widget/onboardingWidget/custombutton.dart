import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/auth/signup.dart';

class CustomButtomBoard extends StatelessWidget {
  const CustomButtomBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 272.0,
      height: 46.0,
      child: ElevatedButton(
        onPressed: () {
          // Navigate to the "Sign Up" screen on button click
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Signup()),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          backgroundColor: Colors.white,
        ),
        child: const Text(
          'Get Started',
          style: TextStyle(
            color: Color(0xFF7642F9), // Specify color using hexadecimal
            fontSize: 16.0, // Text size
          ),
        ),
      ),
    );
  }
}
