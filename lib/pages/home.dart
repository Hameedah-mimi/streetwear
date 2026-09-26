import 'package:e_commerce/core/colors.dart';
import 'package:e_commerce/widgets/custom_app_bar.dart';
import 'package:e_commerce/widgets/image_slider.dart';
import 'package:e_commerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    MyColors color = MyColors();

    return Scaffold(
      backgroundColor: color.kbackgroundColor,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),

              child: Column(
                children: [
                  Container(
                    color: color.kprimaryColor,
                    child: const CustomAppBar(),
                  ),

                  const SizedBox(height: 20),

                  const CustomSearchBar(),

                  const SizedBox(height: 20),

                  ImageSlider(
                    currentSlide: currentSlide,

                    onchange: (value) {
                      setState(() {
                        currentSlide = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
