import 'package:e_commerce/core/colors.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentCart = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.92,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 180, 14, 14),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (currentCart > 1) {
                        currentCart--;
                      }
                    });
                  },
                  icon: const Icon(Icons.remove, color: Colors.white),
                ),

                Text(
                  currentCart.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      currentCart++;
                    });
                  },
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$currentCart item(s) added to cart')),
                );
              },
              icon: const Icon(Icons.shopping_cart_outlined),
              label: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: myColors.ktetiaryColor,
                foregroundColor: const Color.fromARGB(255, 104, 9, 9),
                minimumSize: const Size(0, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
