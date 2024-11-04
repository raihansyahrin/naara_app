import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: secondary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(1, 4),
                  ),
                ],
              ),
              child: const TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: light),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.search_rounded,
                      size: 24,
                      color: light,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
