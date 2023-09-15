import 'package:flutter/material.dart';

class CartText extends StatelessWidget {
  final String text;
  const CartText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 45,
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Poppins',
          color: Color(0XFF7642F9),
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}