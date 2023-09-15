import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/productdetails.dart';
import '../../../core/class/datalist.dart';

class ItemDisplay extends StatelessWidget {
  const ItemDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: 400,
        height: 234,
        decoration: const BoxDecoration(
          color: Color(0xFFE4DAFD),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50)), // Hexadecimal color value
        ),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Most Searched',
            style: TextStyle(
              color: Color(0xFF000000), // Hexadecimal color value
              fontFamily: 'Poppins', // Use the desired font family
              fontSize: 20.0, // Use the desired font size
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500, // Use the desired font weight
              height: 1.0, // Use 1.0 for normal line height
            ),
          ),
        ),
      ),
      Positioned(
        top: 50,
        child: SizedBox(
          height: 200,
          width: 360,
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Scroll horizontally
            itemCount: dataListitem
                .length, // Replace with the length of your data list
            itemBuilder: (context, index) {
              final item = dataListitem[index]; // Replace with your data model

              return Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Hero(
                        tag: "product_details_${item.id}",
                        child: Image.asset(
                          item.photo,
                          height: 100,
                          width: 90,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          item.name, // Replace with the name of the item
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 10.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            item.price, // Replace with the price of the item
                            style: const TextStyle(
                              color: Color(0xFFFF9090),
                              fontFamily: 'Inter',
                              fontSize: 11.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProudctDetails()),
                              );
                            },
                            child: Container(
                              width: 29,
                              height: 29,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                    0xFFFF9090), // Hexadecimal color value #FF9090
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      )
    ]);
  }
}
