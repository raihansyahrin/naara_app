import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/pages/dashboard_page.dart';
import 'package:hackfest2024_naara/routes/navigation_button.dart';
import 'package:hackfest2024_naara/pages/education_page.dart';
import 'package:hackfest2024_naara/pages/map_page.dart';
import 'package:hackfest2024_naara/pages/profile_page.dart';
import 'package:hackfest2024_naara/pages/technology_page.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List screens = [
    DashboardPage(),
    EducationPage(),
    MapPage(),
    TechnologyPage(),
    ProfilePage(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: light,
        // appBar: AppBar(
        //   title: Text('Movies'),
        //   backgroundColor: Colors.black,
        // ),
        body: Center(
          child: screens.elementAt(selectedIndex),
        ),
        // drawer: SideMenu(),
        bottomNavigationBar: BottomMenu(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ));
  }
}
