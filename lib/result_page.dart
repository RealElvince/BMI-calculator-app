// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'constants.dart';
import 'bmi_calculator.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              // Result Text section
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.blueGrey[700],
              ),
              margin: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // Normal text section
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  // Actual BMI reading
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  // BMI interpretation
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          // RE-CALCULATE button
          GestureDetector(
            onTap: () {
              // Navigation to
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: bottomContainerHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: bottomContainercolor,
              ),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
