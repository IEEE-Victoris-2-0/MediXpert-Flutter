import 'package:flutter/material.dart';

import 'customfield.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 314,
          height: 66,
          child: CustomField(
            hinttext: "Email",
            iconData: Icons.email,
            valid: (text) {
              if (text!.isEmpty) {
                return "This field is required";
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 314,
          height: 66,
          child: CustomField(
            hinttext: "password",
            iconData: Icons.lock,
            valid: (text) {
              if (text!.isEmpty) {
                return "This field is required";
              } else {
                return null;
              }
            },
          ),
        ),
      ],
    );
  }
}
