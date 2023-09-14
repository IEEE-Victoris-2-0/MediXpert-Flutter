// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

import '../widget/calldrWidget/profileinfo.dart';

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
          children: [
            SizedBox(height: 10),
            ProfileInfo(),
          ],
        ),
      ),
    );
  }
}
