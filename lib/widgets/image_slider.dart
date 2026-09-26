import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final int currentSlide;
  final Function(int) onchange;

  const ImageSlider({
    super.key,
    required this.currentSlide,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 150,

          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),

            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: const ClampingScrollPhysics(),
              onPageChanged: onchange,

              children: [
                Image.asset('assets/images/slider1.jpeg', fit: BoxFit.cover),

                Image.asset('assets/images/slider2.jpeg', fit: BoxFit.cover),

                Image.asset('assets/images/slider3.jpeg', fit: BoxFit.cover),
              ],
            ),
          ),
        ),

        Positioned(
          bottom: 10,
          left: 0,
          right: 0,

          child: Align(
            alignment: Alignment.bottomCenter,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: List.generate(
                3,

                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),

                  width: currentSlide == index ? 15 : 0,

                  height: 10,

                  margin: const EdgeInsets.only(right: 5),

                  decoration: BoxDecoration(
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,

                    border: Border.all(color: Colors.black),

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
