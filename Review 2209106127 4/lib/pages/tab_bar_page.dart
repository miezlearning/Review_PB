import 'package:flutter/material.dart';
import 'package:navigation_route/pages/home_page.dart';
import 'package:navigation_route/pages/profile_page.dart';
import 'package:navigation_route/pages/settings_page.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MyHomePage(),
            MyProfile(),
            MySettingsPage(),
            // Icon(Icons.flight, size: 350),
            // Icon(Icons.directions_transit, size: 350),
            // Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
