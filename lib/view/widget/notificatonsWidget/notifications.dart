import 'package:flutter/material.dart';

class NotiCard extends StatelessWidget {
  final String text1;
  final String text2;
  const NotiCard({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 12,
        top: 19,
        bottom: 9,
        right: 18,
      ),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(118, 66, 249, 0.26), blurRadius: 12),
          ]),
      child: Column(
        children: [
          SizedBox(
            width: 273,
            height: 50,
            child: Text(
              'Your medication $text1 is now available at $text2',
              style: const TextStyle(
                  color: Color(0XFF7642F9),
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),

          Row(
            children: [
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF7642F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                  )
                ),
                onPressed: (){}, child: const Text(
                'Check it',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
