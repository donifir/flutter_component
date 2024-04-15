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
            '5 List View Widt Devider',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber,
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
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
