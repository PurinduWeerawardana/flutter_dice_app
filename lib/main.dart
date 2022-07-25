import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dices'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 5;
  int rightdice = 3;
  void RollDices() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                RollDices();
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                RollDices();
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
