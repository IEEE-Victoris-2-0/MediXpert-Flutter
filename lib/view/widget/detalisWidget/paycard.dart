import 'package:flutter/material.dart';

class PayCard extends StatelessWidget {
  final int subtotal;
  final String dilvery;
  final int total;

  const PayCard(
      {super.key,
      required this.subtotal,
      required this.dilvery,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 201,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.only(
        left: 20,
        top: 18,
        right: 22,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Order Summary',
            style: TextStyle(
              color: Color(0XFF7642F9),
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                'EGP$subtotal.00',
                style: const TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Dilvery',
                style: TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                dilvery,
                style: const TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          const Divider(
            color: Color(0XFF7642F9),
            thickness: 3,
            height: 25,
            indent: 5,
            endIndent: 5,
          ),
          Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                'EGp$total.00',
                style: const TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
