import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print("left button clicked.");
              },
              child: Image.asset("images/dice1.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Right button clicked.");
              },
              child: Image.asset("images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
