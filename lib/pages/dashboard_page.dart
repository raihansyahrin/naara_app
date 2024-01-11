import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/model/places_model.dart';

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

class NewsArticle extends StatelessWidget {
  const NewsArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.brown,
          image: DecorationImage(
            image: AssetImage("assets/images/taman-lansia.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Judul artikel',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NaaraPlaces extends StatelessWidget {
  const NaaraPlaces({
    Key? key,
    required this.places,
  }) : super(key: key);

  final List<PlacesModel> places;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        places[index].photo,
                      ),
                    ),
                    Container(
                      height: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.grey.withOpacity(0.0),
                            Colors.black,
                          ],
                          stops: [0.0, 1.0],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              places[index].place_name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                height: 1,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              places[index].city,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: places.length,
      ),
    );
  }
}

class WaterInformation extends StatelessWidget {
  const WaterInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '09.00 AM',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '300ml Water',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'See More',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/water-glass-image.png',
                    height: 160,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning,"),
              Text(
                "John Doe",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.notification_add_rounded,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
