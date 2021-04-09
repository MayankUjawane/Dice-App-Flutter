import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftNumber = 1;
  int rightNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftNumber.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$rightNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
