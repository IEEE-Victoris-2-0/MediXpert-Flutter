import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            SvgPicture.asset("assets/images/Group 17.svg",
                height: 500, width: 800),
            Positioned(
              top: 0,
              left: 100,
              child: SvgPicture.asset(
                "assets/images/medicine.svg",
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
                top: 177,
                left: 56,
                child: Text(
                  "Get \n your\n medicine",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 28,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF7642F9),
                  ),
                ))
          ],
        ),
      ]),
    );
  }
}
