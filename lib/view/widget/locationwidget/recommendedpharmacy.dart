import 'package:flutter/material.dart';

import '../../../core/class/pharmacylist.dart';

class RecommendedPharmacy extends StatelessWidget {
  const RecommendedPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30, // Adjust the radius as needed
                    backgroundImage: AssetImage(item.photoUrl ?? ""),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Evaluation: ${item.evaluationnumber}"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
