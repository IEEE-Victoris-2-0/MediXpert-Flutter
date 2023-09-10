import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: const Color(0xFFC8B3FC).withOpacity(0.35),
            radius: 26,
            child: SvgPicture.asset(
              "assets/images/facebook.svg",
            ),
          ),
        ),
        const SizedBox(
          width: 105,
        ),
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: const Color(
              0xFFC8B3FC,
            ).withOpacity(0.35),
            radius: 26,
            child: SvgPicture.asset(
              "assets/images/google.svg",
            ),
          ),
        ),
      ],
    );
  }
}
