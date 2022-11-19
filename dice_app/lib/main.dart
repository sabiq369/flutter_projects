import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const DiceApp(),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDice = 3;
  int rightDice = 6;
  void randomDiceNumber() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red.shade600,
            title: const Center(
              child: Text(
                'Dice App',
                style: TextStyle(fontFamily: 'Dancing Script', fontSize: 40.0),
              ),
            ),
          ),
          body: Center(
            child: Container(
              height: 420.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.black),
              child: Column(children: [
                const SizedBox(
                  height: 40.0,
                ),
                const Text(
                  'Click To Roll The Dice',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Dancing Script',
                    backgroundColor: Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          randomDiceNumber();
                          print('Left dice number $leftDice');
                        },
                        child: Image.asset(
                          'images/dice$leftDice.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          randomDiceNumber();
                          print('Right dice number $rightDice');
                        },
                        child: Image.asset('images/dice$rightDice.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: Text(
                    'You Got $leftDice and $rightDice',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
