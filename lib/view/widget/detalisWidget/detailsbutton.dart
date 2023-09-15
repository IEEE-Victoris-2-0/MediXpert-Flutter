import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const DetailsButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
          width: double.infinity,
          child: InkWell(
            onTap: onPressed,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/123.png',
                  width: double.infinity,
                  height: 70,
                  fit: BoxFit.fill,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
