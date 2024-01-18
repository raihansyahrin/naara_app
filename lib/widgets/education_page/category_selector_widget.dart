import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Air', 'Sabun', 'Tutorial', 'Cuci Tangan'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // color: Colors.cyan,
      alignment: Alignment.topCenter,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                          color: index == selectedIndex ? primary : secondary,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        categories[index],
                        style: GoogleFonts.poppins(
                          color: index == selectedIndex
                              ? primaryAccent
                              : secondaryAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 0,
              ),
          itemCount: categories.length),
    );
  }
}
