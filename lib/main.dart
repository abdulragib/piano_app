import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded piano({Color color, int soundNumber}){
    return Expanded(
      child: Card(
        child: Container(
          width: 400,
          height: 70,
          child: ElevatedButton(
            child: null,
            style: ElevatedButton.styleFrom(
              primary: color,
            ),
            onPressed: () => playSound(soundNumber),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              piano(color: Colors.red, soundNumber: 1),
              SizedBox(
                height: 5,
              ),

              piano(color: Colors.orange, soundNumber: 2),
              SizedBox(
                height: 5,
              ),

              piano(color: Colors.yellow, soundNumber: 3),
              SizedBox(
                height: 5,
              ),

              piano(color: Colors.green, soundNumber: 4),
              SizedBox(
                height: 5,
              ),

              piano(color: Colors.lightBlueAccent, soundNumber: 5),
              SizedBox(
                height: 5,
              ),

              piano(color: Colors.blue, soundNumber: 6),
              SizedBox(
                height: 5,
              ),

              piano(color: Colors.purple, soundNumber: 7),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//audiocache: It works as a cache because it keeps track of the copied files so that you can replay them without delay; you can also pre-load files.
