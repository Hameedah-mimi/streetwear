import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/category_models.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(categories[index].imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Text(
                categories[index].title,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        },

        separatorBuilder: (context, index) => const SizedBox(width: 20),

        itemCount: categories.length,
      ),
    );
  }
}
