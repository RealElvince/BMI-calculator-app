// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:bmi_app/input_page.dart';
import 'package:flutter/material.dart';
import 'result_page.dart';

void main() => runApp(const BmiCalculator());

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR APP',
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
