import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Container> myList = List.generate(90, (index) {
    return Container(
// height: 500000,
      width: 150,
      color: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      // body: GridView(
      //   padding: EdgeInsets.all(10),
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 3 / 4,
      //   ),
      //   children: myList,
      // ),
      body: GridView.count(
        childAspectRatio: 4 / 3,
        padding: const EdgeInsets.all(10),
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: myList,
      ),
    
    ));
  }
}
