import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackfest2024_naara/models/education_model/education_model.dart';
import 'package:hackfest2024_naara/pages/article_page.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class EducationList extends StatelessWidget {
  const EducationList({
    Key? key,
    required this.educationAir,
  }) : super(key: key);

  final List<EducationAirModel> educationAir;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: educationAir.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ArticlePage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      educationAir[index].photo,
                      height: 80,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        educationAir[index].title,
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: light),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        educationAir[index].date,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: light),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
