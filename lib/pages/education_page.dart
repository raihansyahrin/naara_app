import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/education_model/education_model.dart';
import 'package:hackfest2024_naara/widgets/education_page/category_selector_widget.dart';
import 'package:hackfest2024_naara/widgets/education_page/education_list_widget.dart';
import 'package:hackfest2024_naara/widgets/education_page/search_field_widget.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  List<EducationAirModel> education_air = [];

  void initModel() {
    education_air = EducationAirModel.getEducationAir();
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // search bar
              SizedBox(height: 15),

              SearchField(),

              SizedBox(height: 15),

              CategorySelector(),

              SizedBox(height: 15),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Air',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              SizedBox(height: 10),

              EducationList(
                education_air: education_air,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
