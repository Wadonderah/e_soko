// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav.screens/Search_Screen.dart';
import 'nav.screens/cart_screen.dart';
import 'nav.screens/home_screen.dart';
import 'nav.screens/profile_screen.dart';
import 'nav.screens/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
    CartScreen(),
    SearchScreen(),
    WishlistScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "HOME"), 
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "PROFILE"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), label: "CART"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: "SEARCH"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: "WISHLIST"),
      ],),
      body: _screens[_pageIndex],
    );
  }
}
