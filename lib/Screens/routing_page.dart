import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../Equipment/color_class.dart';
import 'category_screen.dart';
import 'discovery_screen.dart';
import 'home_screen.dart';
import 'notification_screen.dart';

class RoutingPage extends StatefulWidget {
  const RoutingPage({Key? key}) : super(key: key);

  @override
  State<RoutingPage> createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {
  int _selectedIndex = 0;

  final List<Widget> _pageRoute = [
    const HomeScreen(),
    const DiscoveryScreen(),
    const NotificationScreen(),
    const CategoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageRoute.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: .0,
        backgroundColor: Colors.pinkAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              label: "",
              backgroundColor: bgColor),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.discovery),
              label: "",
              backgroundColor: bgColor),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.notification),
              label: "",
              backgroundColor: bgColor),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.category),
              label: "",
              backgroundColor: bgColor),
        ],
      ),
    );
  }
}
