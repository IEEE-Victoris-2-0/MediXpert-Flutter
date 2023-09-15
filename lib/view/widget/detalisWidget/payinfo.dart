import 'package:flutter/material.dart';

class PayInfo extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;

  const PayInfo({super.key, required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 105,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(200, 179, 252, 0.33),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 20,
              top: 20,
              child: Image.asset(
                'assets/images/pay.png',
                height: 15,
                fit: BoxFit.fill,
              )),
          Positioned(
            left: 38,
            top: 13,
            child: Text(
              text1,
              style: const TextStyle(
                color: Color(0XFF7642F9),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 43,
            child: Text(
              text2,
              style: const TextStyle(
                color: Color(0XFF7642F9),
                fontSize: 13,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 70,
            child: Text(
              text3,
              style: const TextStyle(
                color: Color(0XFF7642F9),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
            Positioned(
              right: 28,
              top: 2,
              child: Row(
                children: [
                  Image.asset(
                'assets/images/pen.png',
                height: 20,
                fit: BoxFit.fill,
              ),
            
                TextButton(onPressed: (){}, child: const Text(
                'Edit',
                style: TextStyle(
                  color: Color(0XFF7642F9),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0XFF7642F9),
                ),
                          ),),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
