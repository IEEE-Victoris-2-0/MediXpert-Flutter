import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xFFF6F2FF), // Use the desired background color
      ),
      child: const TextField(
        decoration: InputDecoration(
          // Placeholder text
          hintStyle: TextStyle(
            color: Colors.grey, // Adjust hint text color as needed
            fontFamily: 'Poppins', // Use the desired font family
            fontSize: 16.0, // Use the desired font size
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none, // Hide the default border
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20), // Adjust padding as needed
          prefixIcon: Icon(
            Icons.search, // Use the desired search icon
            color: Colors.grey, // Adjust icon color as needed
          ),
        ),
      ),
    );
  }
}
