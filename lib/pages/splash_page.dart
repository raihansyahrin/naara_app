import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: light,
        body: Center(
          child: Container(
            child: Image.asset(
              'assets/images/logo.png',
              width: 148,
              height: 151,
            ),
          ),
        ),
      ),
    );
  }
}
