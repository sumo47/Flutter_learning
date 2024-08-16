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
          title: Text("Flutter app"),
          backgroundColor: Color.fromARGB(255, 238, 224, 103),
        ),
        body: Center(
          child: Stack(
            children: [
              SizedBox(height: 20,),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              Positioned(
                bottom: 50,
                right: 50,
                child: Icon(Icons.face)
                )   ,
            ],
          ),
        ),

      ),
    );
  }
}
