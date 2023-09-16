import 'package:flutter/material.dart';

class FavCard extends StatelessWidget {
  final String path;
  final String text1;
  final String texttwo;
  final String text3;
  const FavCard(
      {super.key,
      required this.path,
      required this.text1,
      required this.texttwo,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left:10,
        top: 10,
        right: 17,
        bottom: 19
      ),
      height: 185,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            color: Color.fromRGBO(164, 164, 164, 0.24),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(path),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF7642F9),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    texttwo,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFC8B3FC),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    text3,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFF9090),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset('assets/images/heart.png'),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF7642F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  )
                ),
                onPressed: () {},
                child: const Text(
                  'Add to cart',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
