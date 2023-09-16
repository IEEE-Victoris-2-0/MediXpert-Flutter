// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:tecdoc/core/class/commentmodel.dart';

class PharmayProfile extends StatelessWidget {
  const PharmayProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                width: 400,
                height: 304,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.0, 1.0],
                    colors: [
                      Color(0xFF7642F9), // Start color
                      Color(0xFFC8B3FC), // End color
                    ],
                    transform: GradientRotation(132 *
                        3.14159265359 /
                        180), // Convert degrees to radians
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                      height: 200,
                      child: Center(
                          child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(
                                  context); // This will navigate back to the previous screen.
                            },
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          ClipOval(
                              child: Image.asset(
                                  "assets/images/pharmacylogo.png")),
                        ],
                      ))),
                ],
              ),
              const Positioned(
                top: 150,
                left: 100,
                child: Text(
                  'Medical Pharmacy',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins', // Use the Poppins font
                    fontWeight: FontWeight.w600, // Set the weight to 600
                    fontSize: 20.0, // Set the font size to 20 pixels
                    height: 30.0 /
                        20.0, // Set the line height to 30 pixels (as a ratio of the font size)
                  ),
                ),
              ),
              const SizedBox(
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 24.0, // Set the icon size as needed
                      color: Colors.yellow, // Set the icon color to yellow
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 42.0, // Set the width to 42 pixels
                    height: 42.0, // Set the height to 42 pixels
                    margin: const EdgeInsets.only(
                        top: 232.0,
                        left: 1.0), // Adjust the top and left margins as needed
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      color: Colors.white, // Set a transparent background color
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.phone, // Use the phone icon
                        size: 24.0, // Set the icon size
                        color: Color(0xFF7642F9), // Set the icon color
                      ),
                    ),
                  ),
                  Container(
                    width: 42.0, // Set the width to 42 pixels
                    height: 42.0, // Set the height to 42 pixels
                    margin: const EdgeInsets.only(
                        top: 232.0,
                        left: 1.0), // Adjust the top and left margins as needed
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, // Make the container circular
                      color: Colors.white, // Set a transparent background color
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.message, // Use the phone icon
                        size: 24.0, // Set the icon size
                        color: Color(0xFF7642F9), // Set the icon color
                      ),
                    ),
                  ),
                ],
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 11,
                    height: 11,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF6FE0B5), // Start color
                          Color(0xFF26FCAB), // End color
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Open',
                      style: TextStyle(
                        color: Color(0xFF7642F9), // Text color
                        fontFamily: 'Poppins', // Font family
                        fontSize: 20.0, // Font size
                        fontStyle: FontStyle.normal, // Font style
                        fontWeight: FontWeight.w400, // Font weight
                        letterSpacing: 1.0, // Letter spacing (adjust as needed)
                        // You can add more properties like shadows, decoration, etc. here
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Location',
                style: TextStyle(
                  color: Color(0xFF000000), // Text color
                  fontFamily: 'Poppins', // Font family
                  fontSize: 20.0, // Font size
                  fontStyle:
                      FontStyle.normal, // Font style (normal in this case)
                  fontWeight: FontWeight.w500, // Font weight (500 in this case)
                  // You can add more properties like letterSpacing, decoration, etc. here
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                '100 Liberty St.16',
                style: TextStyle(
                  color: Color(0xFFC0C0C0), // Text color
                  fontFamily: 'Poppins', // Font family
                  fontSize: 15.0, // Font size
                  fontStyle:
                      FontStyle.normal, // Font style (normal in this case)
                  fontWeight: FontWeight.w500, // Font weight (500 in this case)
                  // You can add more properties like letterSpacing, decoration, etc. here
                ),
              ),
            ),
            Center(child: Image.asset("assets/images/map.png")),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Stack(
                  children: [
                    Container(
                      width: 400, // Width in logical pixels
                      height: 800, // Height in logical pixels
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Color.fromRGBO(200, 179, 252,
                            0.49), // Background color with opacity
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Comments',
                        style: TextStyle(
                          color: Color(
                              0xFF000000), // Text color in hexadecimal format
                          fontFamily: 'Poppins', // Font family
                          fontSize: 20.0, // Font size
                          fontStyle: FontStyle.normal, // Font style (normal)
                          fontWeight: FontWeight.w500, // Font weight (500)
                          // You can skip 'lineHeight' and 'letterSpacing' properties if not needed.
                          // line height (normal by default)
                          // letterSpacing (normal by default)
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: SizedBox(
                              height: 800,
                              width: 400,
                              child: ListView.builder(
                                  itemCount: comments.length,
                                  itemBuilder: (context, index) {
                                    final comment = comments[index];
                                    return Row(children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage:
                                            AssetImage(comment.profileImage),
                                        radius: 25, // Adjust the size as needed
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          width: 250,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                50), // Adjust the border radius as needed
                                            color: Colors
                                                .white, // Change the color to your desired border color
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0,
                                                    bottom: 10,
                                                    top: 10),
                                                child: Text(
                                                  comment.username,
                                                  style: const TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  comment.commentText,
                                                  style: const TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]);
                                  })),
                        ),
                      ],
                    ),
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
