import 'package:bmi_calculator/constant/colors.dart';
import 'package:flutter/material.dart';

class LeftBgShape extends StatelessWidget {
  const LeftBgShape({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        )
      ],
    );
  }
}
