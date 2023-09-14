import 'package:flutter/material.dart';

class ForgetField extends StatelessWidget {
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;

  const ForgetField({
    super.key,
    this.mycontroller,
    required this.valid,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 31,
      height: 45,
      child: TextFormField(
        controller: mycontroller,
        validator: valid,
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFC8B3FC).withOpacity(0.21),
            border: const UnderlineInputBorder(
            )
            ),
      ),
    );
  }
}
