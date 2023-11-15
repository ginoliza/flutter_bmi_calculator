import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xff1d1e33);
const bottomContainerColour = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    flex: 1,
                    child: ReusableCard(colour: activeCardColour),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(colour: activeCardColour),
                  )
                ],
              ),
            ),
            Expanded(
              child: Expanded(
                child: ReusableCard(colour: activeCardColour),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(colour: activeCardColour),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(colour: activeCardColour),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
