import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int number) {
    player.play('note$number.wav');
  }

  Expanded buildWidget(Color c, int number) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: c,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildWidget(Colors.red, 1),
            buildWidget(Colors.orange, 2),
            buildWidget(Colors.yellow, 3),
            buildWidget(Colors.green, 4),
            buildWidget(Colors.teal, 5),
            buildWidget(Colors.blue, 6),
            buildWidget(Colors.purple, 7)
          ]),
        ),
      ),
    );
  }
}
