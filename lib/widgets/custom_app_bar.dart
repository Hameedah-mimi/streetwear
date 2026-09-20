import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/hamburger.jpeg',
              width: 30,
              height: 30,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 30),
          ),
        ),
      ],
    );
  }
}
