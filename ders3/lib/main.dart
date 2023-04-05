
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: Dice(),
        ),
      ),
    );
  }
}



class Dice extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<Dice> {
  int leftDiceValue = Random().nextInt(6) + 1;
  int rightDiceValue = Random().nextInt(6) + 1;

  void changeNumber() {
    setState(() {
      rightDiceValue = Random().nextInt(6) + 1;
      leftDiceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNumber();
              },
              child: Image.asset('images/dice$leftDiceValue.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeNumber();
              },
              child: Image.asset('images/dice$rightDiceValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}









