import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/dashboard_model/places_model.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page.dart/header_widget.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page.dart/water_information_widget.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page.dart/naara_places_widget.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page.dart/news_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<PlacesModel> places = [];

  void initModel() {
    places = PlacesModel.getPlaces();
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Header
            Header(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Water Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            SizedBox(height: 10),

            WaterInformation(),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Naara Places',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            SizedBox(height: 10),

            NaaraPlaces(places: places),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'News',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            SizedBox(height: 10),

            NewsArticle(),
          ],
        ),
      ),
    );
  }
}
