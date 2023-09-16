class Pharmacy {
  final String name;
  final String address;
  final double distance;

  Pharmacy({
    required this.name,
    required this.address,
    required this.distance,
  });
}

List<Pharmacy> pharmacies = [
  Pharmacy(name: 'Medical Pharmacy', address: '7 Caro St', distance: 2.8),
  Pharmacy(name: 'Pharamaleo Pharmacy', address: '15 Moddi St', distance: 6.4),
  Pharmacy(name: 'Health Care', address: '13 Maddi St.', distance: 8.6),
  Pharmacy(name: 'RX Pharmacy', address: '12 Maddi St', distance: 9.0),
];
