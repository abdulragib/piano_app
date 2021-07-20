import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
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
              Expanded(
                child: Card(
                  child: Container(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      child: null,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () => playSound(1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              Expanded(
                child: Card(
                  child: Container(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      child: null,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                      onPressed: () => playSound(2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              Expanded(
                child: Card(
                  child: Container(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                      ),
                      child: null,
                      onPressed: () => playSound(3),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              Expanded(
                child: Card(
                  child: Container(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: null,
                      onPressed: () => playSound(4),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              Expanded(
                child: Card(
                  child: Container(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                      ),
                      child: null,
                      onPressed: () => playSound(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              Expanded(
                child: Card(
                  child: Container(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: null,
                      onPressed: () => playSound(6),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              Expanded(
                child: Card(
                  child: Container(
                    width: 400,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                      child: null,
                      onPressed: () => playSound(7),
                    ),
                  ),
                ),
              ),
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
