class EducationAirModel {
  int id;
  String photo;
  String title;
  String date;
  String content;

  EducationAirModel(
      {required this.id,
      required this.photo,
      required this.title,
      required this.date,
      required this.content});

  static List<EducationAirModel> getEducationAir() {
    List<EducationAirModel> education_air = [];

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.png',
        title: 'Air Untuk Kebutuhan',
        date: '12 Des 2023',
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.png',
        title: 'Minum Sehat',
        date: '02 Jan 2024',
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.png',
        title: 'Memasak Air',
        date: '08 Jan 2024',
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.png',
        title: 'Air Untuk Kebutuhan',
        date: '12 Des 2023',
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.png',
        title: 'Minum Sehat',
        date: '02 Jan 2024',
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.',
      ),
    );

    education_air.add(
      EducationAirModel(
        id: 0,
        photo: 'assets/images/taman-lansia.png',
        title: 'Memasak Air',
        date: '08 Jan 2024',
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel porta tellus. Mauris quis metus a ante faucibus vehicula nec ut felis. Pellentesque et lectus sed ante maximus iaculis a eu elit. Aliquam eu purus in risus laoreet imperdiet pretium non urna. Morbi vitae pharetra ante. Nulla condimentum, nibh at cursus euismod, mi ligula varius nisi, id varius purus dolor in orci. Vestibulum convallis eleifend tortor nec imperdiet. Proin a lectus cursus, efficitur ex eu, condimentum neque. Mauris elementum ac ipsum et ullamcorper. Integer nec ante dignissim, consequat purus vitae, posuere eros.',
      ),
    );
    return education_air;
  }
}
