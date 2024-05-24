import 'package:bmi_calculator/constant/colors.dart';
import 'package:bmi_calculator/widgets/left_bg_shape.dart';
import 'package:bmi_calculator/widgets/right_bg_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            'BMI تو چنده ؟',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 130,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        color: orangeColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                          color: orangeColor.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        color: orangeColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد',
                        hintStyle: TextStyle(
                          color: orangeColor.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              const Text(
                '!محاسبه کن',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              const Text(
                '31',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              const Text(
                'شما اضافه وزن دارید',
                style: TextStyle(
                    color: orangeColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              const RightBgShape(width: 250, height: 40),
              SizedBox(height: size.height * 0.02),
              const RightBgShape(width: 200, height: 40),
              SizedBox(height: size.height * 0.02),
              const RightBgShape(width: 150, height: 40),
              SizedBox(height: size.height * 0.02),
              const LeftBgShape(width: 200, height: 40),
              SizedBox(height: size.height * 0.02),
              const LeftBgShape(width: 180, height: 40),
              SizedBox(height: size.height * 0.02),
              const LeftBgShape(width: 160, height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
