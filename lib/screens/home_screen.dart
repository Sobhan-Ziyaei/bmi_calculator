import 'package:bmi_calculator/constant/colors.dart';
import 'package:bmi_calculator/widgets/left_bg_shape.dart';
import 'package:bmi_calculator/widgets/right_bg_shape.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightContorller = TextEditingController();

  var resultText = '';
  var resultBMI = 0.00;

  var widthBad = 0.00;
  var withGood = 0.00;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      controller: weightController,
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
                      controller: heightContorller,
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
              InkWell(
                onTap: () {
                  final height = double.parse(heightContorller.text);
                  final weight = double.parse(weightController.text);

                  setState(() {
                    resultBMI = weight / (height * height);

                    if (resultBMI > 25) {
                      widthBad = 270;
                      withGood = 50;
                      resultText = 'شما اضافه وزن دارید';
                    } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                      withGood = 270;
                      widthBad = 50;
                      resultText = 'وزن شما نرمال است';
                    } else {
                      withGood = 10;
                      widthBad = 10;
                      resultText = 'وزن شما پایین تر از حد نرمال است';
                    }
                  });
                },
                child: const Text(
                  '!محاسبه کن',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                resultBMI.toStringAsFixed(2),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                resultText,
                style: const TextStyle(
                    color: orangeColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              RightBgShape(width: widthBad, height: 40),
              SizedBox(height: size.height * 0.02),
              LeftBgShape(width: withGood, height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
