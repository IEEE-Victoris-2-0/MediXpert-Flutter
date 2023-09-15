import 'package:flutter/material.dart';

class CartField extends StatefulWidget {
  const CartField({super.key});

  @override
  State<CartField> createState() => _CartFieldState();
}

class _CartFieldState extends State<CartField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            const BoxShadow(
                blurRadius: 10, color: Color.fromRGBO(220, 216, 216, 0.54)),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          const Positioned(
            left: 30,
            top: 23,
            child: SizedBox(
              width: 142,
              height: 21,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: Color(0XFFC8B3FC),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    hintText: 'Enter Dscount Code'),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 27,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    color: Color(0XFF7642F9),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
