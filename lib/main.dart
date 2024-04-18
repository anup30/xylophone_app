// Xylophone App
// 17.4.24: support class project. by Arafat Rohan
// https://github.com/ArafatRohan93/xylophone_practice_project

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

   List<Widget> get keyList => [ // for shuffling ?
     buildKey(color: Colors.red, audioFileIndex: 1),
     buildKey(color: Colors.orange, audioFileIndex: 2),
     buildKey(color: Colors.yellow, audioFileIndex: 3),
     buildKey(color: Colors.green, audioFileIndex: 4),
     buildKey(color: Colors.teal, audioFileIndex: 5),
     buildKey(color: Colors.blue, audioFileIndex: 6),
     buildKey(color: Colors.purple, audioFileIndex: 7),
   ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          //top: false,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                buildKey(color: Colors.red, audioFileIndex: 1),
                buildKey(color: Colors.orange, audioFileIndex: 2),
                buildKey(color: Colors.yellow, audioFileIndex: 3),
                buildKey(color: Colors.green, audioFileIndex: 4),
                buildKey(color: Colors.teal, audioFileIndex: 5),
                buildKey(color: Colors.blue, audioFileIndex: 6),
                buildKey(color: Colors.purple, audioFileIndex: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildKey({required Color color, required int audioFileIndex}) {
    return Expanded(
        child: GestureDetector(
          onTap: (){
            playSound(audioFileIndex);
          },
          child: Container(
            color: color,
          ),
        ),
    );
  }

  void playSound(int audioFileIndex) {
    AudioPlayer player = AudioPlayer();
    player.play(AssetSource('note$audioFileIndex.wav'));
  }
}
