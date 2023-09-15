import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tecdoc/view/screen/layout.dart';

import '../widget/productdetailswidget/decrementincrement.dart';

class ProudctDetails extends StatefulWidget {
  const ProudctDetails({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProudctDetailsState createState() => _ProudctDetailsState();
}

class _ProudctDetailsState extends State<ProudctDetails> {
  // ignore: unused_field
  int _currentIndex = 0;

  final List<Widget> containers = [
    Container(
      margin:
          const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
      decoration: const BoxDecoration(
        color: Color(0xFFC8B3FC), // Background color
      ),
    ),
    Container(
      margin: const EdgeInsets.only(top: 8.0, right: 16.0, bottom: 8.0),
      decoration: const BoxDecoration(
        color: Color(0xFFC8B3FC), // Background color
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC8B3FC),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CarouselSlider(
              items: containers,
              options: CarouselOptions(
                aspectRatio: 18 / 15,
                enableInfiniteScroll: false,
                padEnds: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LayoutScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 59,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: const Color.fromRGBO(255, 255, 255, 0.42),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
// Add spacing
            SizedBox(
              height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: containers.asMap().entries.map((entry) {
                  final index = entry.key;
                  final color = _currentIndex == index
                      ? const Color(0xFF7642F9)
                      : Colors.grey; // Change color based on the index

                  return Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(horizontal: 6.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                  );
                }).toList(),
              ),
            ),

            Positioned(
              top: 250,
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 800,
                    decoration: const BoxDecoration(
                      color: Colors.white, // Set the background color
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(50), // Adjust the radius as needed
                        topRight:
                            Radius.circular(50), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 120,
                      left: 300,
                      child: IncrementDecrementContainer()),
                ],
              ),
            ),
            Positioned(
              top: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset("assets/images/Group 19.png"),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    'EGP67.50',
                    style: TextStyle(
                      color: Color(0xFFFF9090), // Hexadecimal color value
                      fontFamily: 'Poppins', // Use the desired font family
                      fontSize: 20.0, // Use the desired font size
                      fontStyle: FontStyle.normal,
                      fontWeight:
                          FontWeight.w500, // Use the desired font weight
                      height: 1.0, // Use 1.0 for normal line height
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 350,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Details :',
                  style: TextStyle(
                    color: Color(0xFF7642F9), // Hexadecimal color value
                    fontFamily: 'Poppins', // Use the desired font family
                    fontSize: 25.0, // Use the desired font size
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500, // Use the desired font weight
                    height: 1.0, // Use 1.0 for normal line height
                  ),
                ),
              ),
            ),
            Positioned(
              top: 700,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 48.0,
                      height: 46.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color:
                            const Color(0xFF7642F9), // Hexadecimal color value
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(-3.0, 5.0),
                            blurRadius: 11.0,
                            spreadRadius: 0.0,
                            color: Color.fromRGBO(187, 160, 255, 0.47),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white, // Color of the heart icon
                        size: 24.0, // Size of the heart icon
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 250.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xFF7642F9), // Hexadecimal color value
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(-3.0, 5.0),
                          blurRadius: 11.0,
                          spreadRadius: 0.0,
                          color: Color.fromRGBO(187, 160, 255, 0.47),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
