import 'package:e_commerce/core/colors.dart';
import 'package:flutter/material.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: myColors.kbackgroundColor,
          ),
          padding: const EdgeInsets.all(4),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: myColors.kbackgroundColor,
          ),
          padding: const EdgeInsets.all(4),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        ),
        SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: myColors.kbackgroundColor,
          ),
          padding: const EdgeInsets.all(4),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}
