import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow.shade500,
        appBar: AppBar(
          title: Text("I am poor"),
          backgroundColor: Colors.yellow.shade800,
        ),
        body: Center(
            child: Image(
          image: AssetImage("images/diamond.png"),
        )),
      ),
    ),
  );
}

// The main function is the starting point of all flutter apps
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey,
//         appBar: AppBar(
//           title: Text("I am Rich"),
//           backgroundColor: Colors.blueGrey[900],
//         ),
//         body: Center(
//           child: Image(
//             image:AssetImage('images/diamond.png')
//           ),
//         ),
//       ),
//     ),
//   );
// }
