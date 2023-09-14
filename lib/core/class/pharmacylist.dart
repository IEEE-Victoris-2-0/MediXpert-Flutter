class PharmacyList {
  final String name;
  final String? photoUrl;
  final String evaluationnumber;
  PharmacyList({
    required this.name,
    required this.evaluationnumber,
    this.photoUrl, // Add image for this item (optional)
  });
}

List<PharmacyList> items = [
  PharmacyList(
      name: 'Pharamaleo Pharmacy',
      evaluationnumber: '5',
      photoUrl: "assets/images/pharmacy (1).png"),
  PharmacyList(
      name: ' Pharamaleo Pharmacy',
      evaluationnumber: '4',
      photoUrl: "assets/images/pharmacy (1).png"),
  PharmacyList(
      name: ' Pharamaleo  Pharmacy',
      evaluationnumber: '3',
      photoUrl: "assets/images/pharmacy (1).png"),
  PharmacyList(
      name: ' Pharamaleo Pharmacy',
      evaluationnumber: '4',
      photoUrl: "assets/images/pharmacy (1).png"),
  PharmacyList(
      name: ' Pharamaleo Pharmacy',
      evaluationnumber: '2',
      photoUrl: "assets/images/pharmacy (1).png"),
  PharmacyList(
      name: ' Pharamaleo Pharmacy',
      evaluationnumber: '5',
      photoUrl: "assets/images/pharmacy (1).png"),
  // Add more items as needed
];
