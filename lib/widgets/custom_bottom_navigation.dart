import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 12, 31, 71),
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromARGB(255, 204, 203, 203),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 1,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_outlined),
          label: 'Analytics',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
