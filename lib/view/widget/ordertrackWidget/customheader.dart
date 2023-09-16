import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 30),
          child: Container(
            width: 59,
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color.fromRGBO(200, 179, 252, 0.27),
            ),
            child: InkWell(
              onTap: () {
                // Navigate back when tapped
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/profilephoto.png"),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Maria Adel",
                    style: TextStyle(
                      color: Color(0xFF7642F9), // Color with hexadecimal value
                      fontFamily: 'Poppins', // Font family
                      fontSize: 20.0, // Font size
                      fontStyle: FontStyle.normal, // Font style
                      fontWeight: FontWeight.w600, // Font weight
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey, // You can adjust the color as needed
                      size: 30.0, // You can adjust the size as needed
                    ),
                    Text(
                      "New cairo 16 st.",
                      style: TextStyle(
                        color:
                            Color(0xFFC8B3FC), // Color with hexadecimal value
                        fontFamily: 'Poppins', // Font family
                        fontSize: 11.0, // Font size
                        fontStyle: FontStyle.normal, // Font style
                        fontWeight: FontWeight.w500, // Font weight
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
