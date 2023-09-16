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
          backgroundColor: const Color(0xFFC8B3FC),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: <Widget>[
              Column(
                children: [
                  const UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Color(0xFFC8B3FC),
                      ),
                      accountName:
                          Text('Maria Adel'), // Add your profile name here
                      accountEmail: Text('mariaadel@gmail.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/profilephoto.png'), // Add your profile photo here
                      )),
                  ListTile(
                    leading: Container(
                      width: 36, // Adjust the width as needed
                      height: 36, // Adjust the height as needed
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        Icons.location_on,
                        color: Color(0xFF7C47FC),
                      ),
                    ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Container(
                      width: 36, // Adjust the width as needed
                      height: 36, // Adjust the height as needed
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Color(0xFF7C47FC),
                      ),
                    ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Container(
                      width: 36, // Adjust the width as needed
                      height: 36, // Adjust the height as needed
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Color(0xFF7C47FC),
                      ),
                    ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Container(
                      width: 36, // Adjust the width as needed
                      height: 36, // Adjust the height as needed
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Color(0xFF7C47FC),
                      ),
                    ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Container(
                      width: 36, // Adjust the width as needed
                      height: 36, // Adjust the height as needed
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.exit_to_app,
                        color: Color(0xFF7C47FC),
                      ),
                    ),
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
