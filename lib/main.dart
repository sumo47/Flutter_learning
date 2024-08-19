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
          child: Row(
            // mainAxisSize: MainAxisSize.min, // cover only minimum size
            // verticalDirection: VerticalDirection.up,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.red,
                width: 100,
                // height: 100,
                child: Text(
                  "container 1",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green[500],
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                // width: double.infinity,
                // height: 100,
                child: Text(
                  "container 2",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              //   Container(
              //     width: double.infinity,
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
