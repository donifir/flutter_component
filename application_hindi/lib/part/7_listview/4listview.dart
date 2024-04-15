import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> myColor = [Colors.red,Colors.blue,Colors.yellow,Colors.amber];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            '3 List View',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber,
        ),
        body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (context, index){
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          }
          ),
      ),
    );
  }
}
