import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackfest2024_naara/models/education_model/education_model.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Air', 'Sabun', 'Tutorial', 'Cuci Tangan'];
  List<EducationAirModel> education_air = [];
  List<EducationAirModel> education_air_filtered = [];

  void initModel() {
    education_air = EducationAirModel.getEducationAir();
    education_air_filtered = List.from(education_air);
  }

  List<EducationAirModel> filterEducationByCategory(String selectedCategory) {
    return EducationAirModel.filterEducationByCategory(
        education_air, selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return Container(
      height: 50,
      // color: Colors.cyan,
      alignment: Alignment.topCenter,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                education_air_filtered =
                    filterEducationByCategory(categories[index]);
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: index == selectedIndex ? primary : secondary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    categories[index],
                    style: GoogleFonts.poppins(
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
