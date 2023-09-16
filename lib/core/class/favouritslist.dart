class FavouritsList {
  final String path;
  final String text1;
  final String text2;
  final String text3;

  FavouritsList(
      {required this.path,
      required this.text1,
      required this.text2,
      required this.text3});
}

List<FavouritsList> favlist = [
  FavouritsList(
    path: 'assets/images/cart1.png', 
    text1: 'by Maria phara', 
    text2: 'by Maria phara', 
    text3: 'EGP350.00',
    ),
    FavouritsList(
    path: 'assets/images/1.png', 
    text1: 'Panadol Extra', 
    text2: 'by Maria phara', 
    text3: 'EGP190.00',
    ),
    FavouritsList(
    path: 'assets/images/2.png', 
    text1: 'Pampers Baby', 
    text2: 'by Maria phara', 
    text3: 'EGP400.00',
    ),
    FavouritsList(
    path: 'assets/images/3.png', 
    text1: 'Health Aid Coliprobio', 
    text2: 'by Maria phara', 
    text3: 'EGP140.00',
    ),
    FavouritsList(
    path: 'assets/images/5.png', 
    text1: 'Excedrin 20 Tablets', 
    text2: 'by VBB phara', 
    text3: 'EGP130.00',
    ),
];
