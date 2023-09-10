import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 59,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 0.42),
          borderRadius: BorderRadius.circular(13)),
      child: IconButton(
        onPressed: () {
          // Handle the back button tap here, e.g., navigate back.
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 30, // Adjust the size as needed
          color: Color.fromRGBO(255, 255, 255, 0.42),
        ),
      ),
    );
  }
}
