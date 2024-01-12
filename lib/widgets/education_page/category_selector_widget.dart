import 'package:flutter/material.dart';

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
                          color: index == selectedIndex
                              ? Colors.black
                              : Color.fromARGB(255, 95, 95, 95),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == selectedIndex
                              ? Colors.white
                              : Colors.white60,
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
