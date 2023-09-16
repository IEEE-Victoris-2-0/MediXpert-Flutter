import 'package:flutter/material.dart';
import 'package:tecdoc/view/widget/ordertrackWidget/customtrackstate.dart';

import '../widget/cartWidget/cartcard.dart';
import '../widget/cartWidget/cartfield.dart';
import '../widget/ordertrackWidget/customheader.dart';

class OrderTrack extends StatefulWidget {
  const OrderTrack({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OrderTrackState createState() => _OrderTrackState();
}

class _OrderTrackState extends State<OrderTrack> {
  String selectedState = 'Ordered'; // Initial selected state

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xFFEDE6FE),
      body: const SingleChildScrollView(
        child: Column(children: [
          CustomHeader(),
          SizedBox(
            height: 20,
          ),
          CustomOrderState(),
          CartCard(
            path: 'assets/images/cart1.png',
            textone: 'QV Baby Bar 100g',
            texttwo: 'by Maria Phara',
            textthree: 'EGP350.00',
          ),
          CartField(),
        ]),
      ),
    );
  }
}
