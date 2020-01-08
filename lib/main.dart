import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildExpandedButton(color: Colors.red, soundNum: 1),
              buildExpandedButton(color: Colors.orange, soundNum: 2),
              buildExpandedButton(color: Colors.yellow, soundNum: 3),
              buildExpandedButton(color: Colors.green, soundNum: 4),
              buildExpandedButton(color: Colors.teal, soundNum: 5),
              buildExpandedButton(color: Colors.blue, soundNum: 6),
              buildExpandedButton(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildExpandedButton({Color color, int soundNum}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playSound('note$soundNum.wav');
        },
      ),
    );
  }

  void playSound(String audioFile) {
    final player = AudioCache();
    player.play(audioFile);
  }
}
