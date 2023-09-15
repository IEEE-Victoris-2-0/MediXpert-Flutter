import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartBackButton extends StatelessWidget {
  const CartBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Container(
          height: 46,
          width: 59,
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: const Color.fromRGBO(200, 179, 252, 0.27),
          ),
          child: SvgPicture.asset(
            'assets/images/cartback.svg',
            fit: BoxFit.none,
          )),
    );
  }
}
