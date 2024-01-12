import 'package:flutter/material.dart';

class TechnologyPage extends StatefulWidget {
  const TechnologyPage({super.key});

  @override
  State<TechnologyPage> createState() => _TechnologyPageState();
}

class _TechnologyPageState extends State<TechnologyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    //left column
                    Container(
                      width: 180,
                      height: 350,
                      decoration: BoxDecoration(color: Colors.black),
                    ),

                    //right column
                    Column(
                      children: [
                        Container(
                          width: 170,
                          height: 220,
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                        Container(
                          width: 170,
                          height: 130,
                          decoration: BoxDecoration(color: Colors.green),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
