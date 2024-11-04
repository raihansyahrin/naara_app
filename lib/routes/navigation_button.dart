import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

// ignore: must_be_immutable
class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int>? onClicked;
  BottomMenu({super.key, this.selectedIndex, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        // Home

        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home, size: 30),
          icon: Icon(Icons.home_outlined, size: 30),
          label: 'Home',
        ),
        // Education
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.article, size: 30),
          icon: Icon(Icons.article_outlined, size: 30),
          label: 'Articles',
        ),
        // Map
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.location_on, size: 30),
          icon: Icon(Icons.location_on_outlined, size: 30),
          label: 'Locations',
        ),
        // Technology
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.build, size: 30),
          icon: Icon(Icons.build_outlined, size: 30),
          label: 'Tech',
        ),
        // Profile
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person, size: 30),
          icon: Icon(Icons.person_outline, size: 30),
          label: 'Profile',
        ),
      ],
      // elevation: 0,
      backgroundColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: primary,
      unselectedItemColor: primary,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}
