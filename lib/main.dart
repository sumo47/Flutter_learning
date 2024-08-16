import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text("Card Widget"),
          backgroundColor: Color.fromARGB(255, 238, 224, 103),
        ),
        body: Center(
          child: Card(
            color: Colors.blue,
            elevation: 5.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('card widget'),
            ),
          ),
        ),
      ),
    );
  }
}
