import 'package:flutter/material.dart';

void main() {
  runApp(
    BinaryQuestion(),
  );
}

class BinaryQuestion extends StatefulWidget {
  @override
  State<BinaryQuestion> createState() => _BinaryQuestionState();
}

class _BinaryQuestionState extends State<BinaryQuestion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text("B I N A R Y  ?'S"),
          ),
        ),
        body: Center(
          child: Image.asset(
            'images/yes1.png',
          ),
        ),
      ),
    );
  }
}
