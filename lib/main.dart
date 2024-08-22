// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Xylophone",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.grey,
        ),
        body: const SafeArea(child: xylophone()),
      ),
    );
  }
}

class xylophone extends StatefulWidget {
  const xylophone({super.key});

  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(DeviceFileSource('assets/note$soundNumber.wav'));
  }

  buildKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildKey(Colors.red,1),
        buildKey(Colors.orange,2),
        buildKey(Colors.yellow,3),
        buildKey(Colors.green,4),
        buildKey(Colors.teal,5),
        buildKey(Colors.blue,6),
        buildKey(Colors.purple,7),
      ],
    );
  }
}
