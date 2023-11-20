import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xff1d1e33);
const inactiveCardColour = Color(0xff111328);
const bottomContainerColour = Color(0xffeb1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
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
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, label: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: inactiveCardColour),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: inactiveCardColour),
                ),
                Expanded(
                  child: ReusableCard(colour: inactiveCardColour),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            color: bottomContainerColour,
          ),
        ],
      ),
    );
  }
}
