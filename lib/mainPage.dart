import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/HomeScreen/productHomeScreen.dart';
import 'package:grocery_store/homeScreen.dart';
import 'package:grocery_store/main.dart';
import 'package:grocery_store/ProfileScreen/profileScreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ProductHomeScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home),
          Icon(Icons.home_work_sharp),
          Icon(Icons.person_2),
        ],
        color: kLightGreen,
        animationCurve: Curves.fastOutSlowIn,
        height: 50,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.green[300],
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
      extendBody: true,
    );
  }
}
