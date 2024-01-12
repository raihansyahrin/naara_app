import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

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
                color: Colors.grey.withOpacity(0.1),
              ),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search Education',
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.search_rounded,
                      size: 24,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
