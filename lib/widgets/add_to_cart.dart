import 'package:e_commerce/core/colors.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});
  @override
  Widget build(BuildContext context) {
    int currentCart = 1;
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: myColors.ktetiaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove, color: Colors.white),
          ),
          SizedBox(width: 10),
          Text(currentCart.toString(), style: TextStyle(color: Colors.white)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
