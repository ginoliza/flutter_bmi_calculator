import 'package:flutter/material.dart';

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
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  )
                ],
              ),
            ),
            Expanded(
              child: Expanded(
                child: ReusableCard(colour: Colors.orange),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(colour: Color(0xff1d1e33)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  Color colour;

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
