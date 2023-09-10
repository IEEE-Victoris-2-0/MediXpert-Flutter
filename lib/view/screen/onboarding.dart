import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tecdoc/view/widget/onboardingWidget/custombutton.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset("assets/images/onboarding.svg"),
            Stack(
              children: [
                SvgPicture.asset(
                  "assets/images/Rectangle 139.svg",
                  fit: BoxFit.cover,
                  height: 400,
                ),
                const Positioned(
                  top: 100,
                  right: 52, // Adjust the top position as needed
                  left: 55, // Adjust the left position as needed
                  child: Center(
                    child: Text(
                      "      A Pharmacy\nfor all your needs.",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0, // Adjust the font size as needed
                        color: Colors.white, // Adjust the text color as needed
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 220,
                  left: 71,
                  right: 74,
                  child: Center(
                    child: Text(
                      "        With few clicks ,place your\n order and wait for it to be delivered",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 300,
                  left: 55,
                  child: CustomButtomBoard(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
