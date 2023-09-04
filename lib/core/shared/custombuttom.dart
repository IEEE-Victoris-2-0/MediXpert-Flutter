import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;

  const Custombuttom({
    required this.onPressed,
    required this.text,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("$text"),
    );
  }
}