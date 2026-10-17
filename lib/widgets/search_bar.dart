import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Icon(Icons.search, size: 30),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search..........',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
