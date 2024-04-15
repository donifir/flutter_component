import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [Colors.red,Colors.blue,Colors.yellow,Colors.amber];

  final List<Widget>myList=List.generate(
    100,
    (index)=>Text(
      "${index+1}",
    )
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            '6 List View Widt Devider',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber,
        ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
