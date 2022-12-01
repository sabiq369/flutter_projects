import 'package:flutter/material.dart';
import 'question_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuestionBrain questionBrain = QuestionBrain();

void main() {
  runApp(
    Quizzler(),
  );
}

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);
  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [Icon(Icons.check), Icon(Icons.close)];
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      bool correctAnswer = questionBrain.getAnswer();
      if (correctAnswer == userPickedAnswer) {
        print('user answer is correct');
        scoreKeeper.add(const Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        print('user answer is wrong');
        scoreKeeper.add(const Icon(
          Icons.close,
          color: Colors.red,
        ));
      }

      questionBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    questionBrain.getQuestion(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 170.0),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  checkAnswer(true);
                },
                child: Text('True'),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 170.0),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  checkAnswer(false);
                },
                child: Text('False'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: scoreKeeper,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
