class PlacesModel {
  int id;
  String photo;
  String place_name;
  String city;

  PlacesModel(
      {required this.id,
      required this.photo,
      required this.place_name,
      required this.city});

  static List<PlacesModel> getPlaces() {
    List<PlacesModel> places = [];

    places.add(
      PlacesModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        place_name: 'Taman Lansia',
        city: 'Kota Bandung',
      ),
    );

    places.add(
      PlacesModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        place_name: 'Metro Indah Mall',
        city: 'Kota Bandung',
      ),
    );

    places.add(
      PlacesModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        place_name: 'Telkom University',
        city: 'Kab. Bandung',
      ),
    );
    return places;
  }
}
