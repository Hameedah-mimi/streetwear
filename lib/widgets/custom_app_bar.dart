import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.grid_3x3, size: 35),
        ),

        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications, size: 35),
        ),
      ],
    );
  }
}
