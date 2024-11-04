import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/pages/splash_page.dart';
import 'package:hackfest2024_naara/routes/routing_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 0)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashPage();
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFCFFFE)),
            home: const Home(),
          );
        }
      },
    );
  }
}
