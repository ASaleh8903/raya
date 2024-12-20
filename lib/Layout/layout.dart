import 'package:flutter/material.dart';

import '../Home/home.dart';
import '../My Cart/my cart.dart';
import '../Notifications/Notifcations.dart';
import '../Settings/settings.dart'; // Replace with the actual path to your `Home` widget.

class Layout extends StatefulWidget {
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    Home(),
    NotificationPage(),
    MyCart(),
    SettingsScreen()      // Replace with actual screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
