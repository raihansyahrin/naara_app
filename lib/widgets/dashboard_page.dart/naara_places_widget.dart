import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/dashboard_model/places_model.dart';

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
