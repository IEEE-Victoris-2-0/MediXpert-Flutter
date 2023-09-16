import 'package:flutter/material.dart';

class DetalisField extends StatelessWidget {
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final String hintText;
  const DetalisField(
      {super.key,
      this.mycontroller,
      required this.valid,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(118, 66, 249, 0.30), blurRadius: 12),
        ],
      ),
      height: 54,
      child: TextFormField(
        controller: mycontroller,
        validator: valid,
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: Color(0xFFC0C0C0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(11),
            )),
      ),
    );
  }
}
