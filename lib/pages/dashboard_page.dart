import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/model/places_model.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

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
            //header
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

            SizedBox(
              height: 10,
            ),

            WaterInformation(),

            SizedBox(
              height: 20,
            ),

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

            SizedBox(
              height: 10,
            ),

            Container(
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

                            // Container(
                            //   decoration: BoxDecoration(
                            //     color: Colors.transparent,
                            //     image: DecorationImage(
                            //       fit: BoxFit.fill,
                            //       image: AssetImage(
                            //         places[index].photo,
                            //       ),
                            //     ),
                            //   ),
                            //   // height: 350.0,
                            // ),

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
                                        fontWeight: FontWeight.w500,
                                        height: 1,
                                      ),
                                    ),
                                    Text(
                                      places[index].city,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
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
                // separatorBuilder: (context, index) => SizedBox(
                //   width: 10,
                // ),
                itemCount: places.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WaterInformation extends StatelessWidget {
  const WaterInformation({
    super.key,
  });

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
              //left row
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
                        borderRadius: BorderRadius.circular(50)),
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
                        )
                      ],
                    ),
                  ),
                ],
              ),

              //right row
              Column(
                children: [
                  Image.asset(
                    'assets/images/water-glass-image.png',
                    height: 160,
                    // height: 100,
                    // width: 300,
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
    super.key,
  });

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
          )
        ],
      ),
    );
  }
}

// class PlaceTiles extends StatelessWidget {
//   List<PlacesModel> places = [];

//   void initModel() {
//     places = PlacesModel.getPlaces();
//   }

//   final void Function()? onTap;

//   PlaceTiles({
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     initModel();
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 25.0),
//         child: Container(
//           padding: EdgeInsets.all(5),
//           width: 200,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             color: Colors.grey[100],
//             boxShadow: [
//               BoxShadow(
//                 color: Color.fromARGB(255, 203, 203, 203).withOpacity(1),
//                 offset: Offset.zero,
//                 blurRadius: 1,
//                 spreadRadius: 1,
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Coffee image
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset(places.imagePath),
//               ),
//               SizedBox(height: 20),
//               // Coffee name
//               Text(
//                 coffee.name,
//                 style: GoogleFonts.raleway(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                   height: 1,
//                 ),
//               ),

//               // Coffee price and favorite icon
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     coffee.price,
//                     style: TextStyle(
//                         color: Color(0xFF00623B),
//                         fontSize: 25,
//                         fontWeight: FontWeight.w400),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.favorite,
//                       color: Color(0xFFED4956),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
