import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttontext;
  const ForgetButton({super.key, this.onPressed, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 131,
      height: 37,
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          width: 131,
          height: 37,
          child: Stack(
            children: [
              SizedBox(
                  width: 131,
                  height: 37,
                  child: SvgPicture.asset('assets/images/Rectangle 150.svg',
                      fit: BoxFit.fill)),
              Row(
                children: [
                  const Spacer(),
                  Column(
                    children: [
                      const Spacer(),
                      Text(
                        buttontext,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
