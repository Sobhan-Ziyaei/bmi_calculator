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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                RightBgShape(width: 170, height: 40),
                RightBgShape(width: 190, height: 40),
                RightBgShape(width: 210, height: 40),
                LeftBgShape(width: 200, height: 40),
                LeftBgShape(width: 210, height: 40),
                LeftBgShape(width: 220, height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
