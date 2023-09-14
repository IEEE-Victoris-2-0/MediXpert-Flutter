import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 144,
        height: 154,
        decoration: BoxDecoration(
            color: Color(0XFFFFFFFF), borderRadius: BorderRadius.circular(14)),
        child: Stack(
          children: [
            Positioned(
              left: 118,
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                    color: Color(0XFFFF9090),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(14))),
                child:
                    Image.asset("assets/images/Vector.png", fit: BoxFit.fill),
              ),
            ),
            Positioned(
                left: 20,
                right: 35,
                top: 12,
                child: Image.asset("assets/images/image.png.png")),
            Positioned(
              left: 109,
              top: 118,
              child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0XFFFF9090),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0XFFFFFFFF),
                      size: 10,
                    ),
                  )),
            ),
            Positioned(
              left: 23,
              top: 109,
              child: SizedBox(
                height: 12,
                width: 73,
                child: Text(
                  'Panadol Extra',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 23,
              top: 122,
              child: Text(
                'by Maria phara',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0XFFC0C0C0),
                  fontWeight: FontWeight.w400,
                  fontSize: 7,
                ),
              ),
            ),
            Positioned(
              left: 23,
              top: 136,
              child: Text(
                'EGP190.00',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0XFFFF9090),
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ));
  }
}