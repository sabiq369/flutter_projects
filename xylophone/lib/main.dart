import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    Xylophone(),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int xyloNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('xylo$xyloNumber.mp3'));
  }

  Expanded display(
      {required String displayNum, required int soundNum, required color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color,
            minimumSize: Size(double.infinity, double.infinity)),
        onPressed: () {
          playSound(soundNum);
        },
        child: Text(
          displayNum,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Xylophone'),
          ),
        ),
        body: Column(
          children: [
            display(displayNum: 'One', soundNum: 1, color: Colors.red),
            display(displayNum: 'Two', soundNum: 2, color: Colors.orange),
            display(displayNum: 'Three', soundNum: 3, color: Colors.yellow),
            display(displayNum: 'Four', soundNum: 4, color: Colors.green),
            display(displayNum: 'Five', soundNum: 5, color: Colors.blue),
            display(displayNum: 'Six', soundNum: 6, color: Colors.indigo),
            display(displayNum: 'Seven', soundNum: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
