import 'dart:ffi';

import 'package:bmi_calculator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuableCard.dart';
import 'ResultPage.dart';
import 'calculation.dart';

const inactivecardcolor = Color(0XFF111328);
const activecardcolor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int Value = 150;
  int WeightValue = 30;
  int AgeValue = 25;
  Color malecardcolor = inactivecardcolor;
  Color femalecardcolor = inactivecardcolor;
  void updateColor(int gender) {
    if (gender == 1) {
      femalecardcolor = inactivecardcolor;
      if (malecardcolor == inactivecardcolor) {
        malecardcolor = activecardcolor;
      } else {
        malecardcolor = inactivecardcolor;
      }
    } else {
      malecardcolor = inactivecardcolor;
      if (femalecardcolor == inactivecardcolor) {
        femalecardcolor = activecardcolor;
      } else {
        femalecardcolor = inactivecardcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('male is pressed');
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ResuableCard(
                      malecardcolor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 90.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('female is pressed');
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ResuableCard(
                      femalecardcolor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              activecardcolor,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        Value.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                      value: Value.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          Value = newValue.round();
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    activecardcolor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          WeightValue.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FloatingActionButton(
                              child: Icon(
                                Icons.remove,
                                size: 46.0,
                              ),
                              backgroundColor: Color(0xFF2C2C48),
                              onPressed: () {
                                setState(() {
                                  WeightValue--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              child: Icon(
                                Icons.add,
                                size: 46.0,
                              ),
                              backgroundColor: Color(0xFF2C2C48),
                              onPressed: () {
                                setState(() {
                                  WeightValue++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    activecardcolor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          AgeValue.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FloatingActionButton(
                              child: Icon(
                                Icons.remove,
                                size: 46.0,
                              ),
                              backgroundColor: Color(0xFF2C2C48),
                              onPressed: () {
                                setState(() {
                                  AgeValue--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              child: Icon(
                                Icons.add,
                                size: 46.0,
                              ),
                              backgroundColor: Color(0xFF2C2C48),
                              onPressed: () {
                                setState(() {
                                  AgeValue++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Calculation calc = Calculation(WeightValue, Value);
              String result_val = calc.calculateBMI();
              String result = calc.get_result();
              String interprtion = calc.get_interpretation();
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultPage(
                    result_val,
                    result,
                    interprtion,
                  );
                }));
              });
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: Colors.pink,
              height: MediaQuery.sizeOf(context).height - 690,
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
        ],
      ),
    );
  }
}
