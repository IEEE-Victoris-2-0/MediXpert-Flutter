import 'package:flutter/material.dart';
import 'package:tecdoc/view/widget/categorieWidget/categoriefield.dart';
import 'package:tecdoc/view/widget/categorieWidget/medication.dart';

class DietFitness extends StatefulWidget {
  const DietFitness({super.key});

  @override
  State<DietFitness> createState() => _DietFitnessState();
}

class _DietFitnessState extends State<DietFitness> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(200, 179, 252, 0.49),
        body: Padding(
          padding: const EdgeInsets.only(left: 33, right: 33, top: 65),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 43,
                      height: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFFFFFF).withOpacity(0.37)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Diet & Fitness",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromRGBO(255, 144, 144, 0.49),
                      child: Text(
                        "9",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                const CategorieField(
                  iconData: Icons.search,
                ),
                const SizedBox(
                  height: 47,
                ),
                Column(
                  children: List.generate(
                    4,
                    (index) => const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MedicineCard(),
                            MedicineCard(),
                          ],
                        ),
                        SizedBox(
                          height: 27,
                        ),
                      ],
                    ),
                  ),
                ),
                const MedicineCard(),
                const SizedBox(
                  height: 27,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
