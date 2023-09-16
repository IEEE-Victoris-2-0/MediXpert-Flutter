import 'package:flutter/material.dart';

import '../../../core/class/pharmacylocation.dart';

class RecommendedPharmacy extends StatelessWidget {
  const RecommendedPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pharmacies.length,
      itemBuilder: (BuildContext context, int index) {
        final pharmacy = pharmacies[index];
        return ListTile(
          leading: const Icon(
            Icons.location_on,
            color: Colors.grey,
            size: 24,
          ),
          title: Text(
            pharmacy.name,
            style: const TextStyle(
              color: Color(0xFF7642F9),
              // Other text styles like fontSize, fontWeight, etc. can be added here
            ),
          ),
          subtitle: Text(
            pharmacy.address,
            style: const TextStyle(
              color:
                  Colors.black, // You can change the color to your preference
              // Other text styles like fontSize, fontWeight, etc. can be added here
            ),
          ),
          trailing: Text(
            '${pharmacy.distance} miles',
            style: const TextStyle(
              color: Colors.white,
              // Other text styles like fontSize, fontWeight, etc. can be added here
            ),
          ),
        );
      },
    );
  }
}
