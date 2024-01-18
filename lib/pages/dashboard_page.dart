import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/dashboard_model/places_model.dart';
import 'package:hackfest2024_naara/pages/article_page.dart';
import 'package:hackfest2024_naara/themes/colors.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page/header_widget.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page/water_information_widget.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page/naara_places_widget.dart';
import 'package:hackfest2024_naara/widgets/dashboard_page/naara_news_widget.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: light,
        body: ListView(
          children: [
            Column(
              children: [
                // Header
                Header(),

                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Check Water Quality',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.bold),
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
                      'Naara News',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                NewsArticle(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticlePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
