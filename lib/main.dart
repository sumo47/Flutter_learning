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
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.red,
                width: 30,
                // height: 100,
                child: Text("container 1",style: TextStyle(color: Colors.black),),
                
              
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
               Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                // width: double.infinity,
                // height: 100,
                child: Text("container 2",style: TextStyle(color: Colors.black),),
              
              ),
               Container(
                padding: EdgeInsets.all(20),
                color: Colors.green,
                // width: 150,
                // height: 100,
                child: Text("container 3",style: TextStyle(color: Colors.black),),
              
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
