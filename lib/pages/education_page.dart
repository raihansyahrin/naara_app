import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackfest2024_naara/models/education_model/education_model.dart';
import 'package:hackfest2024_naara/themes/colors.dart';
import 'package:hackfest2024_naara/widgets/education_page/category_selector_widget.dart';
import 'package:hackfest2024_naara/widgets/education_page/education_list_widget.dart';
import 'package:hackfest2024_naara/widgets/education_page/search_field_widget.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  List<EducationAirModel> educationAir = [];
  List<EducationAirModel> educationAirFiltered = [];

  void initModel() {
    educationAir = EducationAirModel.getEducationAir();
    educationAirFiltered = List.from(educationAir);
  }

  List<EducationAirModel> filterEducationByCategory(String selectedCategory) {
    return EducationAirModel.filterEducationByCategory(
        educationAir, selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return Scaffold(
      backgroundColor: light,
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15),
                const SearchField(),
                const SizedBox(height: 15),
                const CategorySelector(),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Air',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                EducationList(educationAir: educationAir),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
