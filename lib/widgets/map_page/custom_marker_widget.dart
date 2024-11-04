import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarker {
  static Marker tegallegaPark(Function(String, String) onTap) {
    return Marker(
      markerId: const MarkerId("Tegallega Park"),
      position: const LatLng(-6.937109587811295, 107.60464998290878),
      infoWindow: const InfoWindow(
        title: "Tegallega Park",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      onTap: () {
        onTap("Tegallega Park", "This place is certified by Naara");
      },
    );
  }

  static Marker paskalHyperSquare(Function(String, String) onTap) {
    return Marker(
      markerId: const MarkerId("23 Paskal Hyper Square"),
      position: const LatLng(-6.914613972320628, 107.59585161174402),
      infoWindow: const InfoWindow(
        title: "23 Paskal Hyper Square",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      onTap: () {
        onTap("23 Paskal Hyper Square", "This place is certified by Naara");
      },
    );
  }

  static Marker transmartBuahbatu(Function(String, String) onTap) {
    return Marker(
      markerId: const MarkerId("Transmart Buahbatu"),
      position: const LatLng(-6.966578011117545, 107.63831425094538),
      infoWindow: const InfoWindow(
        title: "Transmart Buahbatu",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      onTap: () {
        onTap("Transmart Buahbatu", "This place is certified by Naara");
      },
    );
  }

  static Marker parisVanJava(Function(String, String) onTap) {
    return Marker(
      markerId: const MarkerId("Paris Van Java"),
      position: const LatLng(-6.887259572807471, 107.59560735095468),
      infoWindow: const InfoWindow(
        title: "Paris Van Java",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      onTap: () {
        onTap("Paris Van Java", "This place is certified by Naara");
      },
    );
  }

  static Marker kiaraArthaPark(Function(String, String) onTap) {
    return Marker(
      markerId: const MarkerId("Kiara Artha Park"),
      position: const LatLng(-6.912992697413928, 107.64264256523583),
      infoWindow: const InfoWindow(
        title: "Kiara Artha Park",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      onTap: () {
        onTap("Kiara Artha Park", "This place is certified by Naara");
      },
    );
  }

  static Marker bandungZoo(Function(String, String) onTap) {
    return Marker(
      markerId: const MarkerId("Kebun Binatang Bandung (Bandung Zoo)"),
      position: const LatLng(-6.887906018494996, 107.60665913318662),
      infoWindow: const InfoWindow(
        title: "Kebun Binatang Bandung (Bandung Zoo)",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      onTap: () {
        onTap("Kebun Binatang Bandung (Bandung Zoo)",
            "This place is certified by Naara");
      },
    );
  }
}


// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class CustomMarker {
//   // Tegallega Park
//   static Marker tegallegaPark() {
//     return Marker(
//       markerId: const MarkerId("Tegallega Park"),
//       position: const LatLng(-6.937109587811295, 107.60464998290878),
//       infoWindow: const InfoWindow(
//         title: "Tegallega Park",
//         snippet: "This place is certified by Naara",
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
//     );
//   }

//   // 23 Paskal Hyper Square
//   static Marker paskalHyperSquare() {
//     return Marker(
      
//       markerId: const MarkerId("23 Paskal Hyper Square"),
//       position: const LatLng(-6.914613972320628, 107.59585161174402),
//       infoWindow: const InfoWindow(

//         title: "23 Paskal Hyper Square",
//         snippet: "This place is certified by Naara",
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
//     );
//   }

//   // Transmart Buahbatu
//   static Marker transmartBuahbatu() {
//     return Marker(
//       markerId: const MarkerId("Transmart Buahbatu"),
//       position: const LatLng(-6.966578011117545, 107.63831425094538),
//       infoWindow: const InfoWindow(
//         title: "Transmart Buahbatu",
//         snippet: "This place is certified by Naara",
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
//     );
//   }

//   // Paris Van Java
//   static Marker parisVanJava() {
//     return Marker(
//       markerId: const MarkerId("Paris Van Java"),
//       position: const LatLng(-6.887259572807471, 107.59560735095468),
//       infoWindow: const InfoWindow(
//         title: "Paris Van Java",
//         snippet: "This place is certified by Naara",
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
//     );
//   }

//   // Kiara Artha Park
//   static Marker kiaraArthaPark() {
//     return Marker(
//       markerId: const MarkerId("Kiara Artha Park"),
//       position: const LatLng(-6.912992697413928, 107.64264256523583),
//       infoWindow: const InfoWindow(
//         title: "Kiara Artha Park",
//         snippet: "This place is certified by Naara",
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
//     );
//   }

//   // Kebun Binatang Bandung (Bandung Zoo)
//   static Marker bandungZoo() {
//     return Marker(
//       markerId: const MarkerId("Kebun Binatang Bandung (Bandung Zoo)"),
//       position: const LatLng(-6.887906018494996, 107.60665913318662),
//       infoWindow: const InfoWindow(
//         title: "Kebun Binatang Bandung (Bandung Zoo)",
//         snippet: "This place is certified by Naara",
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
//     );
//   }
// }
