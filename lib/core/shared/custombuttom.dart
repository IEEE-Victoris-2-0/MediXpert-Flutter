import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Custombuttom extends StatelessWidget {
  final void Function()? onPressed;
  final String buttontext;

  const Custombuttom({
    super.key,
    this.onPressed,
    required this.buttontext,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Stack(
        children: [
          SvgPicture.asset('assets/images/button.svg'),
           Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 37,
              vertical: 7,
            ),
            child: Text(
              buttontext,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
