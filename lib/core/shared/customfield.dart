// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hinttext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool? obscureText;

  const CustomField({
    super.key,
    required this.hinttext,
    required this.iconData,
    this.mycontroller,
    required this.valid,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314,
      height: 66,
      child: TextFormField(
        controller: mycontroller,
        validator: valid,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
            prefixIcon: Container(
              padding:
                  const EdgeInsets.only(left: 7, top: 7, bottom: 7, right: 30),
              child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.white,
                child: Icon(
                  iconData,
                  size: 30,
                  color: const Color(0xFF7C47FC),
                ),
              ),
            ),
            filled: true,
            fillColor: const Color(0xFFC8B3FC),
            hintText: hinttext,
            hintStyle: const TextStyle(
              fontSize: 20,
              color: Color(0xFFF6F2FF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(44),
            )),
      ),
    );
  }
}
