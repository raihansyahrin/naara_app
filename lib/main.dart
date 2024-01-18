import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/pages/splash_page.dart';
import 'package:hackfest2024_naara/routes/routing_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 0)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashPage();
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFCFFFE)),
            home: Home(),
          );
        }
      },
    );
  }
}
