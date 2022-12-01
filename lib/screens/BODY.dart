import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/reusable_child.dart';
import '../components/AppDrawer.dart';
import '../constants.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import '../components/round_icon_button.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

double? result;

enum GenderType {
  MALE,
  FEMALE,
}

class BODY extends StatefulWidget {
  const BODY({Key? key}) : super(key: key);

  @override
  _BODYState createState() => _BODYState();
}

class _BODYState extends State<BODY> {
  // Color maleCardColor = inactiveContainerColor;
  // Color femaleCardColor = inactiveContainerColor;
  // void updateColor({GenderType gender = GenderType.MALE}) {
  //   //for male
  //   // gender==GenderType.MALE?(maleCardColor=(maleCardColor == inactiveContainerColor)?containerColours:inactiveContainerColor):(femaleCardColor=(femaleCardColor == inactiveContainerColor)?containerColours:inactiveContainerColor);
  //   // gender==GenderType.MALE?(femaleCardColor=(maleCardColor == inactiveContainerColor)?containerColours:inactiveContainerColor):(maleCardColor=(femaleCardColor == inactiveContainerColor)?containerColours:inactiveContainerColor);
  //   if (gender == GenderType.MALE) {
  //     if (maleCardColor == inactiveContainerColor) {
  //       maleCardColor = containerColours;
  //       femaleCardColor = inactiveContainerColor;
  //     } else {
  //       maleCardColor = inactiveContainerColor;
  //     }
  //   } else if (gender == GenderType.FEMALE) {
  //     if (femaleCardColor == inactiveContainerColor) {
  //       femaleCardColor = containerColours;
  //       maleCardColor = inactiveContainerColor;
  //     } else {
  //       femaleCardColor = inactiveContainerColor;
  //     }
  //   }
  // }
  int height = 180;
  int weight = 50;
  int age = 21;
  GenderType selectedGender = GenderType.FEMALE;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        // leading: GestureDetector(
        //     onTap: () {
        //       setState(() {});
        //     },
        //     child: Icon(Icons.sort)),
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.MALE;
                      });
                    },
                    colour: selectedGender == GenderType.MALE
                        ? kContainerColours
                        : kInactiveContainerColor,
                    cardChild: ReusableChild(
                      containerIcon: FontAwesomeIcons.mars,
                      txt: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.FEMALE;
                      });
                    },
                    colour: selectedGender == GenderType.FEMALE
                        ? kContainerColours
                        : kInactiveContainerColor,
                    cardChild: ReusableChild(
                      containerIcon: FontAwesomeIcons.venus,
                      txt: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kContainerColours,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      trackHeight: 2.0,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      // activeColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kContainerColours,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              ICON: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  if (weight < 100) weight = weight + 1;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  if (weight < 100) weight = weight + 1;
                                });
                              },
                            ),
                            RoundIconButton(
                              ICON: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if (weight > 0) weight = weight - 1;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  if (weight > 0) weight = weight - 1;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kContainerColours,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              ICON: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  if (age <= 150) age++;
                                });
                              },
                            ),
                            RoundIconButton(
                              ICON: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if (age > 0) age--;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTAP: () {
              CalculatorBrain calc =
                  new CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(
                      bmiResult: calc.calculateBMI(),
                      interpretation: calc.getInterpretation(),
                      resultText: calc.getResults(),
                    );
                  },
                ),
              );
            },
            txt: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
