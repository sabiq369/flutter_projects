import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    Xylophone(),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('xylo$soundNumber.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              // color: Colors.black,
              width: 400.0,
              height: 540.0,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                    child: Container(
                      color: Colors.orange,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    child: Container(
                      color: Colors.yellow,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    child: Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                    child: Container(
                      color: Colors.indigo,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                    child: Container(
                      color: Colors.deepPurple,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// TextButton(
// onPressed: () {
// final player = AudioPlayer();
// player.play(AssetSource('xylo2.mp3'));
// },
// child: Text('Click Me'),
