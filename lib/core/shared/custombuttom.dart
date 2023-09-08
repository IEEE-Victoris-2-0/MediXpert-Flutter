import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  final void Function()? onPressed;
  final String buttontext;

  const Custombuttom({
    super.key, this.onPressed, required this.buttontext,});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 131,
      height: 37,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7642F9),
            Color(0xFFC8B3FC),
          ],
        ),
        borderRadius: BorderRadius.circular(23),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.transparent)),
        onPressed: onPressed,
        child: Text(
          buttontext,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
