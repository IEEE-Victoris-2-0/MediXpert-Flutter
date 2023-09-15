import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/pharmacyprofile.dart';

import '../../../core/class/pharmacylist.dart';

class CustomGridleView extends StatelessWidget {
  const CustomGridleView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Container(
          height: 120,
          width: 139,
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (item.photoUrl != null) // Check if a photo URL exists
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PharmayProfile()),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      item.photoUrl!, // Replace with your image asset path
                      width: 100, // Adjust the image width as needed
                      height: 100, // Adjust the image height as needed
                      fit: BoxFit
                          .cover, // Optional: Adjust the BoxFit to control how the image is scaled
                    ),
                  ),
                ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  item.name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 9.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
              ),
              const SizedBox(height: 4.0),
              Container(
                width: 49.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(
                      0xFF7642F9), // Hexadecimal color value #7642F9
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      "assets/images/star.png",
                      height: 18,
                      width: 17,
                    ),
                  ),
                  Text(
                    item.evaluationnumber,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  )
                ]),
              )
            ],
          ),
        );
      },
    );
  }
}
