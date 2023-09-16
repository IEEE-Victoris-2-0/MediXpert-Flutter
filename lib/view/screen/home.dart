import 'package:flutter/material.dart';
import 'package:tecdoc/view/screen/auth/signup.dart';
import 'package:tecdoc/view/screen/loaction.dart';
import 'package:tecdoc/view/screen/orders.dart';
import 'package:tecdoc/view/widget/homeWidget/header.dart';

import '../widget/homeWidget/categoriespart.dart';
import '../widget/homeWidget/itemdisplay.dart';
import 'favourits.dart';
import 'notificatons/notifications.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
          backgroundColor: const Color(0xC8B3FCE8),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Column(
                children: [
                  const UserAccountsDrawerHeader(
                      accountName:
                          Text('Maria Adel'), // Add your profile name here
                      accountEmail: Text('mariaadel@gmail.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/profile.jpg'), // Add your profile photo here
                      )),
                  ListTile(
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text('Orders'),
                    onTap: () {
                      // Navigate to the Orders screen
                      Navigator.pop(context); // Close the drawer
                      // Add navigation logic to the Orders screen
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: const Text('Location'),
                    onTap: () {
                      // Navigate to the Location screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Location()),
                      ); // Close the drawer
                      // Add navigation logic to the Location screen
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                    onTap: () {
                      // Navigate to the Notifications screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyNotifications()),
                      ); // Close the drawer
                      // Add navigation logic to the Notifications screen
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.favorite),
                    title: const Text('Favorites'),
                    onTap: () {
                      // Navigate to the Favorites screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favourits()),
                      ); // Close the drawer
                      // Add navigation logic to the Favorites screen
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.shopping_cart),
                    title: const Text('orders'),
                    onTap: () {
                      // Navigate to the Favorites screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Orders()),
                      ); // Close the drawer
                      // Add navigation logic to the Favorites screen
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text('Sign Out'),
                    onTap: () {
                      // Implement sign-out logic
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      ); // Close th // Close the drawer
                      // Add sign-out logic here
                    },
                  ),
                ],
              )
            ],
          )),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderPart(),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Categories',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF000000), // Hex color #000
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  // The following line adjusts line height to normal
                  height: 1,
                ),
              ),
            ),
            CategoriesPart(),
            SizedBox(
              height: 15,
            ),
            ItemDisplay()
          ],
        ),
      ),
    );
  }
}
