import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Hello, \nMaria Adel",
            style: TextStyle(
              color: Color(0xFF000000), // Hexadecimal color value #000
              fontFamily: 'Poppins', // Use the desired font family
              fontSize: 25.0, // Use the desired font size
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500, // Use the desired font weight
              height: 1.0, // Use 1.0 for normal line height
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/profilephoto.png",
          ),
        ),
      ],
    );
  }
}
