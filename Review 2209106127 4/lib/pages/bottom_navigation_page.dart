import 'package:flutter/material.dart';
import 'package:navigation_route/pages/home_page.dart';
import 'package:navigation_route/pages/profile_page.dart';
import 'package:navigation_route/pages/settings_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _index = 0;
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  final List<dynamic> _pages = [
    const MyHomePage(),
    const MyProfile(),
    const MySettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
