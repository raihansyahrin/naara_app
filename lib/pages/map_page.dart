import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackfest2024_naara/themes/colors.dart';
import 'package:hackfest2024_naara/widgets/map_page/custom_marker_widget.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  final LatLng _bandung = const LatLng(-6.914744, 107.609810);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onMarkerTapped(String title, String snippet) {
    _buildModalMarkerClicked(title, snippet);
  }

  Future<dynamic> _buildModalMarkerClicked(String title, String snippet) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: secondaryAccent,
      elevation: 0,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left

            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 60,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 10),
                        const Divider(
                          indent: 10,
                          endIndent: 70,
                          color: Colors.white,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '4.9',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            SizedBox(
                              height: 20,
                              width: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return const Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.amber,
                                  );
                                },
                                itemCount: 5,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const CircleAvatar(
                              maxRadius: 2,
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '(7.181)',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          snippet,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: secondaryAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        backgroundColor: secondary,
                        child: Icon(
                          Icons.ios_share,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 42,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: secondaryAccent,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 42,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: primary,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 60,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: secondaryAccent,
                        // borderRadius: BorderRadius.only(
                        //   topRight: Radius.circular(10),
                        // ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 60,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: primary, // enih
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Naara Location',
                    style: TextStyle(
                      color: primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var listPhoto = [
                      'assets/images/transmart-1.png',
                      'assets/images/trasnmart-2.png',
                    ];
                    return SizedBox(
                      height: 150,
                      width: 200,
                      child: Image.asset(
                        listPhoto[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: 2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _bandung,
                zoom: 11.0,
              ),
              markers: {
                CustomMarker.tegallegaPark(_onMarkerTapped),
                CustomMarker.paskalHyperSquare(_onMarkerTapped),
                CustomMarker.transmartBuahbatu(_onMarkerTapped),
                CustomMarker.parisVanJava(_onMarkerTapped),
                CustomMarker.kiaraArthaPark(_onMarkerTapped),
                CustomMarker.bandungZoo(_onMarkerTapped),
              },
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.8),
                borderRadius: BorderRadius.circular(50),
              ),
              height: 60,
              width: double.infinity,
              child: const Text(
                'Naara Locations',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:hackfest2024_naara/widgets/map_page/custom_marker_widget.dart';
// import 'package:google_fonts/google_fonts.dart';

// class MapPage extends StatefulWidget {
//   const MapPage({Key? key}) : super(key: key);

//   @override
//   State<MapPage> createState() => _MapPageState();
// }

// class _MapPageState extends State<MapPage> {
//   late GoogleMapController mapController;

//   final LatLng _bandung = const LatLng(-6.914744, 107.609810);

//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // appBar: AppBar(
//         //   title: Text(
//         //     "Naara Locations",
//         //     style: GoogleFonts.poppins(
//         //       fontWeight: FontWeight.w800,
//         //       fontSize: 35,
//         //     ),
//         //   ),
//         //   centerTitle: true,
//         //   backgroundColor: primary,
//         // ),
//         extendBodyBehindAppBar: true,
//         body: Stack(
//           children: [
//             GoogleMap(
//               mapType: MapType.normal,
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: _bandung,
//                 zoom: 11.0,
//               ),
//               markers: {
//                 CustomMarker.tegallegaPark(),
//                 CustomMarker.paskalHyperSquare(),
//                 CustomMarker.transmartBuahbatu(),
//                 CustomMarker.parisVanJava(),
//                 CustomMarker.kiaraArthaPark(),
//                 CustomMarker.bandungZoo(),
//               },
//             ),
//             Container(
//               alignment: Alignment.center,
//               margin: const EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 50,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue.withOpacity(0.8),
//                 borderRadius: BorderRadius.circular(
//                   50,
//                 ),
//               ),
//               height: 60,
//               width: double.infinity,
//               child: const Text(
//                 'Naara Locations',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 27,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
