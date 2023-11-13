import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* Modificar solamente algunos elementos de: ej. dark */
      theme: ThemeData.dark().copyWith(
        /* Color de fondo de la barra */
        appBarTheme: AppBarTheme(
          color: Color(0xff0e0a21),
        ),
        /* Color de fondo del scaffold */
        scaffoldBackgroundColor: Color(0xff0e0a21),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

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
      body: Center(
        child: Text('Body Text'),
      ),
      /* Tener aun mas control de cada widget envolviendo con Theme */
      floatingActionButton: Theme(
        data: ThemeData(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.red,
          ),
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
