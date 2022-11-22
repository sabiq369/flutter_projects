import 'dart:math';

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
  int image = 2;
  @override
  Widget build(BuildContext context) {
    image = Random().nextInt(2) + 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text("B I N A R Y  ?'S"),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Ask Your Yes or No Questions',
                style: TextStyle(fontSize: 25.0),
              ),
              Divider(
                color: Colors.black,
                height: 40.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    print('$image');
                  });
                },
                child: Image.asset('images/$image.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
