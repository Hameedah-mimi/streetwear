import 'package:e_commerce/core/colors.dart';
import 'package:e_commerce/models/product_models.dart';
import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';

class ProductDescription extends StatelessWidget {
  final ProductModel product;
  final TextStyle style;

  const ProductDescription({super.key, required this.product, required this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: myColors.kprimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text("Description"),
              ),
              const Text('Specialization'),
              const Text('Reviews'),
            ],
          ),
          Text(product.description),
        ],
      ),
    );
  }
}
