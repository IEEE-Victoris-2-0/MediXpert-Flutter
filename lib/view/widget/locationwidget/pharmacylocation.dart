import 'package:flutter/material.dart';

import '../../../core/class/pharmacylocation.dart';

class PharmacyListWidget extends StatelessWidget {
  final List<Pharmacy> pharmacies;

  const PharmacyListWidget({super.key, required this.pharmacies});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: pharmacies.map((pharmacy) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.location_on, // This is the location icon
                    color: Colors
                        .grey, // You can change the color to your preference
                    size: 24, // You can change the size to your preference
                  ),
                  Text(
                    pharmacy.name,
                    style: const TextStyle(
                      color: Color(
                          0xFF7642F9), // Use the Color class to define a color
                      // Other text styles like fontSize, fontWeight, etc. can be added here
                    ),
                  ),
                  Text(
                    '${pharmacy.distance} miles',
                    style: const TextStyle(
                      color:
                          Colors.white, // Use the Color class to define a color
                      // Other text styles like fontSize, fontWeight, etc. can be added here
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
