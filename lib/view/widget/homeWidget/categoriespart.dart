import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../screen/categories/diet_fittness.dart';
import '../../screen/categories/medication.dart';
import '../../screen/categories/mom_baby.dart';
import '../../screen/categories/vitamins.dart';

class CategoriesPart extends StatelessWidget {
  const CategoriesPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Medication()),
                );
              },
              child: Container(
                  width: 64,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFC8B3FC), // Hexadecimal color value
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/Group 4.svg",
                    ),
                  )),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Medicine',
              style: TextStyle(
                color: Color(0xFF000000), // Hexadecimal color value
                fontFamily: 'Poppins', // Use the desired font family
                fontSize: 12.0, // Use the desired font size
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400, // Use the desired font weight
                height: 1.0, // Use 1.0 for normal line height
              ),
            )
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MomBaby()),
                );
              },
              child: Container(
                  width: 64,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFC8B3FC), // Hexadecimal color value
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/mom&baby.svg",
                    ),
                  )),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Mom&Baby',
              style: TextStyle(
                color: Color(0xFF000000), // Hexadecimal color value
                fontFamily: 'Poppins', // Use the desired font family
                fontSize: 12.0, // Use the desired font size
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400, // Use the desired font weight
                height: 1.0, // Use 1.0 for normal line height
              ),
            )
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Vitamins()),
                );
              },
              child: Container(
                  width: 64,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFC8B3FC), // Hexadecimal color value
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/vitamins.svg",
                    ),
                  )),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Vitamins',
              style: TextStyle(
                color: Color(0xFF000000), // Hexadecimal color value
                fontFamily: 'Poppins', // Use the desired font family
                fontSize: 12.0, // Use the desired font size
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400, // Use the desired font weight
                height: 1.0, // Use 1.0 for normal line height
              ),
            )
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DietFitness()),
                );
              },
              child: Container(
                  width: 64,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFC8B3FC), // Hexadecimal color value
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/images/diet&fittness.svg",
                    ),
                  )),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Diet&Fitness',
              style: TextStyle(
                color: Color(0xFF000000), // Hexadecimal color value
                fontFamily: 'Poppins', // Use the desired font family
                fontSize: 12.0, // Use the desired font size
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400, // Use the desired font weight
                height: 1.0, // Use 1.0 for normal line height
              ),
            )
          ],
        ),
      ],
    );
  }
}
