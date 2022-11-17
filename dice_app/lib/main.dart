import 'package:flutter/material.dart';

void main() {
  runApp(
    DiceApp(),
  );
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red.shade600,
            title: Center(
              child: Text('Dice App'),
            ),
          ),
          body: Center(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('First dice clicked');
                    },
                    child: Image.asset(
                      'images/dice1.png',
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('Second dice clicked');
                    },
                    child: Image.asset('images/dice2.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
