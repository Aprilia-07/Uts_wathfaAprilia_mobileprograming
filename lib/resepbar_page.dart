import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:resep_app/pages/favorit_page.dart';
import 'package:resep_app/pages/home_page.dart';
import 'package:resep_app/pages/setting_page.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int index = 0;
  final screen = const [
    HomePage(),
    FavoritePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.transparent,
        color: Colors.purple,
        buttonBackgroundColor: Colors.blueAccent,
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}