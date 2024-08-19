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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            // margin: EdgeInsets.all(50),
            // margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            // margin: EdgeInsets.only(top: 20),
            // margin: EdgeInsets.zero,
            margin: EdgeInsets.fromLTRB(10, 20, 30, 40),

            padding: EdgeInsets.all(20),
            color: Colors.white,
            width: 100,
            height: 100,
            child: Text("Hello",style: TextStyle(color: Colors.black),),
          
          ),
        ),
      ),
    );
  }
}
