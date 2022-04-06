import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const xylophone());

class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  void PlaySound(int playnum) {
    final Player = AudioCache();
    Player.play("note$playnum.wav");
  }

  Expanded buildkey(int num, Color colour) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          PlaySound(num);
        },
        child: Text(
          "Clicked!!",
          style: TextStyle(color: colour),
        ),
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
          children: [
            buildkey(1, Colors.red),
            buildkey(2, Colors.greenAccent),
            buildkey(3, Colors.deepOrange),
            buildkey(4, Colors.blue),
            buildkey(5, Colors.orangeAccent),
            buildkey(6, Colors.yellow),
            buildkey(7, Colors.green),
          ],
        )),
      ),
    );
  }
}
