import 'package:flutter/material.dart';

class OrdersCard extends StatelessWidget {
  final String path;
  final String textone;
  final String texttwo;
  final String textthree;
  final String state;

  const OrdersCard(
      {super.key,
      required this.path,
      required this.textone,
      required this.texttwo,
      required this.textthree, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(blurRadius: 20, color: Color.fromRGBO(220, 216, 216, 0.54)),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 124,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              left: 12,
              top: 10,
              child: SizedBox(
                  height: 104,
                width: 71,
                child: Image.asset(
                  path,
                  fit: BoxFit.fill,
                ),
              )),
          const Positioned(
            left: 89,
            top: 14,
            child: SizedBox(
              width: 141,
              height: 22,
              child: Text(
                "twinzol eye drops",
                style: TextStyle(
                    color: Color(0XFF7642F9),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
            left: 89,
            top: 49,
            child: SizedBox(
              width: 92,
              height: 18,
              child: Text(
                texttwo,
                style: const TextStyle(
                    color: Color(0XFFC8B3FC),
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const Positioned(
            left: 89,
            top: 82,
            child: SizedBox(
              width: 73,
              height: 13,
              child: Text(
                "EGP67.50",
                style: TextStyle(
                    color: Color(0XFF7642F9),
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Positioned(
            left: 240,
            top: 89,
            child: Text(
              state,
              style: const TextStyle(
                color: Color(0XFFC5F942),
                fontSize: 13,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}