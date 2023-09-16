import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 300,
          width: 450,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(150)),
            color: Color(0xFF7642F9),
          ),
        ),
        Builder(
          builder: (context) => // Ensure Scaffold is in context
              MaterialButton(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 45, // Width in logical pixels
                      height: 44, // Height in logical pixels
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), // Border radius
                        color: Colors.white, // Background color
                      ),
                      child: SvgPicture.asset("assets/images/home2.svg"),
                    ),
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        Positioned(
            top: 59, child: SvgPicture.asset("assets/images/circule.svg")),
        Positioned(
            top: 100,
            left: 100,
            child: SvgPicture.asset("assets/images/circule.svg")),
        Positioned(
            bottom: 40, child: SvgPicture.asset("assets/images/circule.svg")),
        Positioned(
            bottom: 180,
            left: 300,
            child: SvgPicture.asset("assets/images/circule.svg")),
        Positioned(
            bottom: 200,
            right: 150,
            child: SvgPicture.asset("assets/images/circule.svg")),
        Positioned(
            bottom: 100,
            right: 400,
            child: SvgPicture.asset("assets/images/circule.svg")),
        Positioned(
            bottom: 50,
            right: 0,
            child: SvgPicture.asset("assets/images/circule.svg")),
        Positioned(
          top: 150,
          left: 28,
          right: 28,
          child: Container(
            width: 400,
            height: 150,
            decoration: const BoxDecoration(
                color: Color(0xFFC8B3FC),
                borderRadius: BorderRadius.all(Radius.circular(40))),
          ),
        ),
        const Positioned(
          left: 56,
          top: 180,
          child: Text(
            'Get',
            style: TextStyle(
              color: Color(0xFF7642F9), // Hexadecimal color value
              fontFamily: 'Poppins', // Use the desired font family
              fontSize: 28.0, // Use the desired font size
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500, // Use the desired font weight
              height: 1.0, // Use 1.0 for normal line height
            ),
          ),
        ),
        const Positioned(
          top: 220,
          left: 56,
          child: Text(
            'Your',
            style: TextStyle(
              color: Colors.white, // Use the desired color
              fontFamily: 'Poppins', // Use the desired font family
              fontSize: 20.0, // Use the desired font size
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500, // Use the desired font weight
              height: 1.0, // Use 1.0 for normal line height
            ),
          ),
        ),
        const Positioned(
          top: 245,
          left: 56,
          child: Text(
            'Medicine',
            style: TextStyle(
              color: Colors.white, // Use the desired color
              fontFamily: 'Poppins', // Use the desired font family
              fontSize: 20.0, // Use the desired font size
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500, // Use the desired font weight
              height: 1.0, // Use 1.0 for normal line height
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 156,
          child: Image.asset("assets/images/medicine.png"),
        ),
      ],
    );
  }
}
