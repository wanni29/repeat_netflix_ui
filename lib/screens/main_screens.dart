import 'package:flutter/material.dart';
import 'package:repeat_netflix_ui/constants.dart';
import 'package:repeat_netflix_ui/models/nav_item.dart';
import 'package:repeat_netflix_ui/screens/coming/coming_screen.dart';
import 'package:repeat_netflix_ui/screens/contents_list/contents_list_screen.dart';
import 'package:repeat_netflix_ui/screens/home/home_screen.dart';

class MainScreens extends StatefulWidget {
  static String routeName = "/main_screens";

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  List pages = [
    HomeScreen(),
    ComingScreen(),
    ContentsListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: kDarkColor,
          selectedFontSize: 12.0,
          onTap: (index) {
            // 여기서 index는 클라이언트에게서 받는 값임
            setState(() {
              _selectedIndex = index;
            });
          },
          items: List.generate(
            navItems.length,
            (index) => BottomNavigationBarItem(
              icon: Icon(navItems[index].icon),
              label: navItems[index].label,
            ),
          )),
    );
  }
}
