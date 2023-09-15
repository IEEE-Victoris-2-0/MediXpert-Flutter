import 'package:flutter/material.dart';
import 'package:tecdoc/view/widget/homeWidget/header.dart';

import '../widget/homeWidget/categoriespart.dart';
import '../widget/homeWidget/itemdisplay.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderPart(),
            Padding(
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
            CategoriesPart(),
            SizedBox(
              height: 15,
            ),
            ItemDisplay()
          ],
        ),
      ),
    );
  }
}
