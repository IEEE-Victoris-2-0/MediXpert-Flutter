import 'package:flutter/material.dart';

class CategorieField extends StatelessWidget {
  final IconData iconData;
  final TextEditingController? mycontroller;

  const CategorieField({
    super.key,
    required this.iconData,
    this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 37,
        child: TextFormField(
          controller: mycontroller,
          decoration: InputDecoration(
              prefixIcon: Icon(
                    iconData,
                    size: 30,
                    color: const Color(0xFFC0C0C0),
                  ),
              filled: true,
              fillColor: const Color(0xFFF6F2FF),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(13),
              )),
        ),
      ),
    );
  }
}