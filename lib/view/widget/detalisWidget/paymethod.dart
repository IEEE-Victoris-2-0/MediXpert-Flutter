import 'package:flutter/material.dart';

class PayMethod extends StatefulWidget {
  const PayMethod({super.key});

  @override
  State<PayMethod> createState() => _PayMethodState();
}

class _PayMethodState extends State<PayMethod> {
  String? pay;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 14, right: 28, bottom: 26),
      width: double.infinity,
      height: 192,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(color: Color.fromRGBO(118, 66, 249, 0.40)),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Payment method',
                style: TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 19,
                width: 26,
                child: Image.asset(
                  'assets/images/png.png',
                  height: 19,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            children: [
              Radio(

                  activeColor: const Color(0XFF7642F9),
                  value: "VISA",
                  groupValue: pay,
                  onChanged: (val) {
                    setState(() {
                      pay = val;
                    });
                  }),
              Image.asset('assets/images/visa.png')
            ],
          ),
          Row(
            children: [
              Radio(
                  activeColor: const Color(0XFF7642F9),
                  value: "Cash",
                  groupValue: pay,
                  onChanged: (val) {
                    setState(() {
                      pay = val;
                    });
                  }),
              const Text(
                'Cash on Delivery',
                style: TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
