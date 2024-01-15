import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarker {
  // Tegallega Park
  static Marker tegallegaPark() {
    return Marker(
      markerId: const MarkerId("Tegallega Park"),
      position: LatLng(-6.937109587811295, 107.60464998290878),
      infoWindow: InfoWindow(
        title: "Tegallega Park",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    );
  }

  // 23 Paskal Hyper Square
  static Marker paskalHyperSquare() {
    return Marker(
      markerId: const MarkerId("23 Paskal Hyper Square"),
      position: LatLng(-6.914613972320628, 107.59585161174402),
      infoWindow: InfoWindow(
        title: "23 Paskal Hyper Square",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    );
  }

  // Transmart Buahbatu
  static Marker transmartBuahbatu() {
    return Marker(
      markerId: const MarkerId("Transmart Buahbatu"),
      position: LatLng(-6.966578011117545, 107.63831425094538),
      infoWindow: InfoWindow(
        title: "Transmart Buahbatu",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    );
  }

  // Paris Van Java
  static Marker parisVanJava() {
    return Marker(
      markerId: const MarkerId("Paris Van Java"),
      position: LatLng(-6.887259572807471, 107.59560735095468),
      infoWindow: InfoWindow(
        title: "Paris Van Java",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    );
  }

  // Kiara Artha Park
  static Marker kiaraArthaPark() {
    return Marker(
      markerId: const MarkerId("Kiara Artha Park"),
      position: LatLng(-6.912992697413928, 107.64264256523583),
      infoWindow: InfoWindow(
        title: "Kiara Artha Park",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    );
  }

  // Kebun Binatang Bandung (Bandung Zoo)
  static Marker bandungZoo() {
    return Marker(
      markerId: const MarkerId("Kebun Binatang Bandung (Bandung Zoo)"),
      position: LatLng(-6.887906018494996, 107.60665913318662),
      infoWindow: InfoWindow(
        title: "Kebun Binatang Bandung (Bandung Zoo)",
        snippet: "This place is certified by Naara",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    );
  }
}
