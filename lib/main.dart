import 'package:bmi_calculator/constant/colors.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_calculator/widgets/left_bg_shape.dart';
import 'package:bmi_calculator/widgets/right_bg_shape.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dana'),
      home: const HomeScreen(),
    );
  }
}
