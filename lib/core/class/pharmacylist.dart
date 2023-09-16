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
      name: ' RX Pharmacy',
      evaluationnumber: '4',
      photoUrl: "assets/images/RX pharmacy.png"),
  PharmacyList(
      name: ' Phara Nece',
      evaluationnumber: '3',
      photoUrl: "assets/images/phara nece.png"),
  PharmacyList(
      name: ' Medical Pharmacy',
      evaluationnumber: '4',
      photoUrl: "assets/images/medical pharmacy.png"),
  PharmacyList(
      name: ' KNG Para',
      evaluationnumber: '2',
      photoUrl: "assets/images/KNG para.png"),
  PharmacyList(
      name: ' Health Care',
      evaluationnumber: '5',
      photoUrl: "assets/images/health care.png"),
  // Add more items as needed
];
