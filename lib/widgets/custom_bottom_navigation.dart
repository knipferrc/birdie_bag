import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 0 && _selectedIndex != 0) {
      Navigator.pushNamed(context, '/');
    }

    if (index == 1) {
      Navigator.pushNamed(context, "/my-bag");
    }

    if (index == 2) {
      Navigator.pushNamed(context, "/profile");
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'My Bag',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue[800],
      onTap: _onItemTapped,
    );
  }
}
