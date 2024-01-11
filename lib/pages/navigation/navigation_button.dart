import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int>? onClicked;
  BottomMenu({this.selectedIndex, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.new_releases, size: 30),
          label: 'Challenges',
        ),
      ],
      // elevation: 0,
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Colors.red[800],
      backgroundColor: Color.fromARGB(255, 121, 180, 248),
      unselectedItemColor: Colors.white,
    );
  }
}
