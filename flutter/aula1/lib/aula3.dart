import 'package:flutter/material.dart';

void main() {
  // runApp(Container(
  //   color: Colors.blue,
  //   child: Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Center(
  //       child: Container(
  //         color: Colors.red,
  //         width: 300,
  //         height: 300,
  //         child: const Center(
  //           child: Text(
  //             "L",
  //             style: TextStyle(color: Colors.white),
  //             textDirection: TextDirection.ltr,
  //           ),
  //         ),
  //       ),
  //     ),
  //   ),
  // ));

  runApp(
    MaterialApp(
      title: "app da aula1",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle),
          title: Text("aula 1"),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text("Aula 1 2 3"),
              Icon(Icons.account_circle),
              Text("aula 4 5 6"),
            ],
          ),
        ),
      ),
    ),
  );
}
