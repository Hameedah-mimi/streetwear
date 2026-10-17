import 'package:e_commerce/widgets/custom_scroll.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      home: CustomBottomNavBar(),
    );
  }
}
