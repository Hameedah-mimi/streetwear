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
      home: Scaffold(bottomNavigationBar: CustomBottomNavBar()),
    );
  }
}
