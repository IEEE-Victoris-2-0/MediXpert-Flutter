import 'package:flutter/material.dart';
import 'package:tecdoc/view/widget/authWidget/login/customfield.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 30,
        left: 31,
      ),
      child: Form(
        child: Column(
          children: [
            CustomField(
              hinttext: "username",
              iconData: Icons.person,
              valid: (text) {
                return null;
              },
            ),
            const SizedBox(
              height: 14,
            ),
            CustomField(
              hinttext: "email",
              iconData: Icons.email,
              valid: (text) {
                return null;
              },
            ),
            const SizedBox(
              height: 14,
            ),
            CustomField(
              hinttext: "password",
              iconData: Icons.lock,
              valid: (text) {
                return null;
              },
            ),
            const SizedBox(
              height: 14,
            ),
            CustomField(
              hinttext: "Phone number",
              iconData: Icons.call,
              valid: (text) {
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
