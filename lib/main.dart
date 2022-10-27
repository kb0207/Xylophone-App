import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buttonKey({Color color, int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {
          playsound(soundNumber);
        },
        child: Text('$soundNumber',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonKey(color: Colors.red, soundNumber: 1),
              buttonKey(color: Colors.orange, soundNumber: 2),
              buttonKey(color: Colors.yellow, soundNumber: 3),
              buttonKey(color: Colors.green, soundNumber: 4),
              buttonKey(color: Colors.teal, soundNumber: 5),
              buttonKey(color: Colors.blue, soundNumber: 6)
            ],
          ),
        ),
      ),
    );
  }
}
