class TechnologyModel {
  int id;
  String photo;
  String title;

  TechnologyModel({
    required this.id,
    required this.photo,
    required this.title,
  });

  static List<TechnologyModel> getTechnology() {
    List<TechnologyModel> technology = [];

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Naara Technology',
      ),
    );
    return technology;
  }
}
