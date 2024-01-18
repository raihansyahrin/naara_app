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
        photo: 'assets/images/tech-1.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/tech-2.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/tech-3.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/tech-4.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/tech-5.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/tech-6.jpeg',
        title: 'Naara Technology',
      ),
    );

    technology.add(
      TechnologyModel(
        id: 0,
        photo: 'assets/images/tech-7.jpeg',
        title: 'Naara Technology',
      ),
    );

    return technology;
  }
}
