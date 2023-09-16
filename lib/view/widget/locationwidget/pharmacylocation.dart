import 'package:flutter/material.dart';

import '../../../core/class/pharmacylocation.dart';

class PharmacyListWidget extends StatelessWidget {
  final List<Pharmacy> pharmacies;

  const PharmacyListWidget({super.key, required this.pharmacies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: pharmacies.map((pharmacy) {
        return Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(pharmacy.name),
              Text('${pharmacy.distance} miles'),
            ],
          ),
        );
      }).toList(),
    );
  }
}
