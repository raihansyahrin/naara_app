import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

// ignore: must_be_immutable
class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int>? onClicked;
  BottomMenu({this.selectedIndex, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      items: [
        // Home

        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home, size: 30),
          icon: Icon(Icons.home_outlined, size: 30),
          label: '',
        ),
        // Education
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.menu_book, size: 30),
          icon: Icon(Icons.menu_book_outlined, size: 30),
          label: '',
        ),
        // Map
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.location_on, size: 30),
          icon: Icon(Icons.location_on_outlined, size: 30),
          label: '',
        ),
        // Technology
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.build, size: 30),
          icon: Icon(Icons.build_outlined, size: 30),
          label: '',
        ),
        // Profile
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person, size: 30),
          icon: Icon(Icons.person_outline, size: 30),
          label: '',
        ),
      ],
      // elevation: 0,
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: primary,
      backgroundColor: secondary,
      unselectedItemColor: primary,
      
    );
  }
}
