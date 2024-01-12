class EducationAirModel {
  int id;
  String photo;
  String title;
  String date;

  EducationAirModel(
      {required this.id,
      required this.photo,
      required this.title,
      required this.date});

  static List<EducationAirModel> getEducationAir() {
    List<EducationAirModel> education_air = [];

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Air Untuk Kebutuhan',
        date: '12 Des 2023',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Minum Sehat',
        date: '02 Jan 2024',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Memasak Air',
        date: '08 Jan 2024',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Air Untuk Kebutuhan',
        date: '12 Des 2023',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Minum Sehat',
        date: '02 Jan 2024',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.jpeg',
        title: 'Memasak Air',
        date: '08 Jan 2024',
      ),
    );
    return education_air;
  }
}
