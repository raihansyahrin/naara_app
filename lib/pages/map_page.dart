import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  final LatLng _bandung = const LatLng(-6.914744, 107.609810);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _bandung,
            zoom: 11.0,
          ),
          markers: {
            const Marker(
              markerId: const MarkerId("Tegallega Park"),
              position: LatLng(-6.937170155175109, 107.60462976064048),
            ),
          },
        ),
      ),
    );
  }
}
