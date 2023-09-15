class DataList {
  final String name;
  final String price;
  final String photo;
  final String id;
  DataList(
      {required this.name,
      required this.price,
      required this.photo,
      required this.id});
}

List<DataList> dataListitem = [
  DataList(
    name: 'twinzol 30 single dose eye drops',
    price: 'EGP67.50',
    photo: 'assets/images/panadol.png',
    id: '1',
  ),
  DataList(
    name: 'Panadol Extra',
    price: 'EGP190.00',
    photo: 'assets/images/panadol.png',
    id: '2',
  ),
  DataList(
      name: 'Panadol Extra',
      price: 'EGP190.00',
      photo: 'assets/images/panadol.png',
      id: '3'),
  DataList(
      name: 'Panadol Extra',
      price: 'EGP190.00',
      photo: 'assets/images/panadol.png',
      id: '4'),
  // Add more data items here as needed
];
