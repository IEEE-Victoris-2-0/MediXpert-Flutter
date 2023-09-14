import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tecdoc/core/class/datalist.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
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
                Positioned(
                    top: 59,
                    child: SvgPicture.asset("assets/images/circule.svg")),
                Positioned(
                    top: 100,
                    left: 100,
                    child: SvgPicture.asset("assets/images/circule.svg")),
                Positioned(
                    bottom: 40,
                    child: SvgPicture.asset("assets/images/circule.svg")),
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
                      fontWeight:
                          FontWeight.w500, // Use the desired font weight
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
                      fontWeight:
                          FontWeight.w500, // Use the desired font weight
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
                      fontWeight:
                          FontWeight.w500, // Use the desired font weight
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
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Categories',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF000000), // Hex color #000
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  // The following line adjusts line height to normal
                  height: 1,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                        width: 64,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(
                              0xFFC8B3FC), // Hexadecimal color value
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/images/Group 4.svg",
                          ),
                        )),
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
                        fontWeight:
                            FontWeight.w400, // Use the desired font weight
                        height: 1.0, // Use 1.0 for normal line height
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: 64,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(
                              0xFFC8B3FC), // Hexadecimal color value
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/images/mom&baby.svg",
                          ),
                        )),
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
                        fontWeight:
                            FontWeight.w400, // Use the desired font weight
                        height: 1.0, // Use 1.0 for normal line height
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: 64,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(
                              0xFFC8B3FC), // Hexadecimal color value
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/images/vitamins.svg",
                          ),
                        )),
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
                        fontWeight:
                            FontWeight.w400, // Use the desired font weight
                        height: 1.0, // Use 1.0 for normal line height
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: 64,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(
                              0xFFC8B3FC), // Hexadecimal color value
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/images/diet&fittness.svg",
                          ),
                        )),
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
                        fontWeight:
                            FontWeight.w400, // Use the desired font weight
                        height: 1.0, // Use 1.0 for normal line height
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(clipBehavior: Clip.none, children: [
              Container(
                width: 400,
                height: 234,
                decoration: const BoxDecoration(
                  color: Color(0xFFE4DAFD),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)), // Hexadecimal color value
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Most Searched',
                    style: TextStyle(
                      color: Color(0xFF000000), // Hexadecimal color value
                      fontFamily: 'Poppins', // Use the desired font family
                      fontSize: 20.0, // Use the desired font size
                      fontStyle: FontStyle.normal,
                      fontWeight:
                          FontWeight.w500, // Use the desired font weight
                      height: 1.0, // Use 1.0 for normal line height
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                child: SizedBox(
                  height: 220,
                  width: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // Scroll horizontally
                    itemCount: dataListitem
                        .length, // Replace with the length of your data list
                    itemBuilder: (context, index) {
                      final item =
                          dataListitem[index]; // Replace with your data model

                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          width: 160,
                          height: 186,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 150,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  item.name, // Replace with the name of the item
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 10.0,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    height: 1.0,
                                  ),
                                ),
                              ),
                              Text(
                                item.price, // Replace with the price of the item
                                style: const TextStyle(
                                  color: Color(0xFFFF9090),
                                  fontFamily: 'Inter',
                                  fontSize: 11.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  height: 1.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
