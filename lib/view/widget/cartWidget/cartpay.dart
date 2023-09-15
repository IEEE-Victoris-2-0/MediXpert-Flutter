import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/checkout/details.dart';

class CartPay extends StatelessWidget {
  final int subtotal;
  final String dilvery;
  final int total;

  const CartPay({super.key, required this.subtotal, required this.dilvery, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0XFF7642F9),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.only(
        left: 27,
        top: 17,
        right: 25,
        bottom: 19,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                "EGP$subtotal.00",
                style: const TextStyle(
                  color: Colors.white,
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
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                dilvery,
                style: const TextStyle(
                  color: Colors.white,
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
            color: Colors.white,
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
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                'EGP$total.00',
                style: const TextStyle(
                  color: Colors.white,
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
          SizedBox(
            width: double.infinity,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const Detalis();
                }));
              },
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/Rec.png',
                    width: double.infinity,
                    height: 41,
                    fit: BoxFit.fill,
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF7642F9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
