// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

import '../widget/calldrWidget/customgrideview.dart';
import '../widget/calldrWidget/profileinfo.dart';
import '../widget/calldrWidget/searchfield.dart';

class CallDr extends StatefulWidget {
  const CallDr({super.key});

  @override
  State<CallDr> createState() => _CallDrState();
}

class _CallDrState extends State<CallDr> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE4DAFD),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            ProfileInfo(),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: SearchField(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Let’s Find Your Pharmacy",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.77), // RGBA color
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                ),
              ),
            ),
            SizedBox(
              height: 600,
              child: CustomGridleView(),
            ),
          ],
        ),
      ),
    );
  }
}
