import 'package:bmi_calculator/constant/colors.dart';
import 'package:flutter/material.dart';

class RightBgShape extends StatelessWidget {
  const RightBgShape({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'شاخص منفی',
          style: TextStyle(color: Colors.red),
        ),
        const SizedBox(width: 5),
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
        )
      ],
    );
  }
}
