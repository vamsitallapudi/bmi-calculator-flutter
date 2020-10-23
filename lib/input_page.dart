import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content_widget.dart';
import 'my_card_widget.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                      color: selectedGender == Gender.MALE
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: IconContentWidget(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.MALE;
                        });
                      }),
                ),
                Expanded(
                  child: MyCard(
                    color: selectedGender == Gender.FEMALE
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "Female",
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
