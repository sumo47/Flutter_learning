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
          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                // color: Colors.amber.shade600, // we have to use single style property
                decoration: BoxDecoration (
                  color:Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "world",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                child: Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(color: Colors.black),
                  ),
                ) ,
                width: 200,
                height: 200,
                color: Colors.greenAccent.shade400,
              )

            ],
          ),
        ),
      ),
    );
  }
}
