import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Divider(
            color: Colors.black,
            height: 25,
            indent: 5,
            endIndent: 5,
          ),
        ),
        SizedBox(
          height: 30,
          width: 75,
          child: Text(
            "Or sign in with",
            style: TextStyle(
              color: Color(0xFFB8B8B8),
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Divider(
            color: Colors.black,
            height: 25,
            indent: 5,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}
