import 'package:e_commerce/pages/cart.dart';
import 'package:e_commerce/pages/categories.dart';
import 'package:e_commerce/pages/home.dart';
import 'package:e_commerce/pages/profile.dart';
import 'package:e_commerce/pages/shop.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/core/colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List screen = [
    ShoppingPage(),
    Categories(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    MyColors colors = MyColors();

    return Scaffold(
      body: screen[currentIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: colors.kprimaryColor,
        child: Icon(
          Icons.home,
          size: 28,
          color: currentIndex == 2 ? Colors.white : colors.kseColor,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        color: colors.ktetiaryColor,
        notchMargin: 15,
        height: 65,
        shape: const CircularNotchedRectangle(),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),

          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      icon: Icon(
                        Icons.shop,
                        size: 27,
                        color: currentIndex == 0
                            ? Colors.white
                            : colors.kseColor,
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      icon: Icon(
                        Icons.category,
                        size: 27,
                        color: currentIndex == 1
                            ? Colors.white
                            : colors.kseColor,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 65),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 3;
                        });
                      },
                      icon: Icon(
                        Icons.trolley,
                        size: 27,
                        color: currentIndex == 3
                            ? Colors.white
                            : colors.kseColor,
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 4;
                        });
                      },
                      icon: Icon(
                        Icons.person,
                        size: 27,
                        color: currentIndex == 4
                            ? Colors.white
                            : colors.kseColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
