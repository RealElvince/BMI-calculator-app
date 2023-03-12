// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'male_icon.dart';
import 'female_icon.dart';
import 'reusable_container.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bmi_calculator.dart';

class InputPage extends StatefulWidget {
  InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

int height = 180;
int weight = 60;
int age = 20;

// Declaration and inatialization of inactive colors of  container 1,2

Color maleColor = inactiveReusableContainercolor;
Color femaleColor = inactiveReusableContainercolor;

// Color update function
void updateColor(EnumGender selectedGender) {
  //Male Container pressed
  if (selectedGender == EnumGender.male) {
    if (maleColor == inactiveReusableContainercolor) {
      maleColor = activeReusableContainercolor;
      femaleColor = inactiveReusableContainercolor;
    } else {
      maleColor = inactiveReusableContainercolor;
    }
  }

  // Female Container pressed
  if (selectedGender == EnumGender.female) {
    if (femaleColor == inactiveReusableContainercolor) {
      femaleColor = activeReusableContainercolor;
      maleColor = inactiveReusableContainercolor;
    } else {
      femaleColor = inactiveReusableContainercolor;
    }
  }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    // first Container
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(EnumGender.male);
                          });
                        },
                        child: ReusableContainer(
                          mycontainer: MaleIcon(),
                          mycolor: maleColor,
                        ),
                      ),
                    ),

                    // Second container
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(EnumGender.female);
                          });
                        },
                        child: ReusableContainer(
                          mycontainer: FemaleIcon(),
                          mycolor: femaleColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Third container
              Expanded(
                child: ReusableContainer(
                  mycontainer: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),

                      // HEIGHT Text
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0x99FFFFFF),
                        ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,

                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0x99FFFFFF),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          // cm Text
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0x99FFFFFF),
                            ),
                          ),
                        ],
                      ),
                      // Slide section
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: inactiveReusableContainercolor,
                            thumbColor: Colors.greenAccent,
                            overlayColor: Colors.green.shade100,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 12.0)),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newHeight) {
                            setState(() {
                              height = newHeight.round();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  mycolor: activeReusableContainercolor,
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    // Fourth Container
                    Expanded(
                      child: ReusableContainer(
                        mycontainer: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // WEIGHT Text section
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0x99FFFFFF),
                              ),
                            ),

                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                                color: Color(0x99FFFFFF),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Weight decrement button
                                FloatingActionButton(
                                  backgroundColor:
                                      inactiveReusableContainercolor,
                                  child: Icon(FontAwesomeIcons.minus,
                                      color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),
                                // Weight increment button
                                FloatingActionButton(
                                  backgroundColor:
                                      inactiveReusableContainercolor,
                                  child: Icon(
                                    FontAwesomeIcons.add,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        mycolor: activeReusableContainercolor,
                      ),
                    ),

                    // fifth container
                    Expanded(
                      child: ReusableContainer(
                        mycontainer: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // WEIGHT Text section
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0x99FFFFFF),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                                color: Color(0x99FFFFFF),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // age decrement button
                                FloatingActionButton(
                                  backgroundColor:
                                      inactiveReusableContainercolor,
                                  child: Icon(FontAwesomeIcons.minus,
                                      color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),
                                // age increment button
                                FloatingActionButton(
                                  backgroundColor:
                                      inactiveReusableContainercolor,
                                  child: Icon(
                                    FontAwesomeIcons.add,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        mycolor: activeReusableContainercolor,
                      ),
                    ),
                  ],
                ),
              ),

              // Calculate ,sixth container
              GestureDetector(
                onTap: () {
                  BmiCalculator myCalc =
                      BmiCalculator(height: height, weight: weight);
                  // Navigation to result page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResult: myCalc.bmiCalculator(),
                        resultText: myCalc.getResult(),
                        interpretation: myCalc.getInterpretation(),
                      ),
                    ),
                  );

                  // object for calculation
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  height: bottomContainerHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: bottomContainercolor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
