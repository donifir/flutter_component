import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('image'),
        ),
        body: Center(
           child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.network('https://picsum.photos/200'),
          ),
          // child: Container(
          //   width: 350,
          //   height: 500,
          //   color: Colors.amber,
          //   child: Image.asset('images/972-200x150.jpeg'),
          // ),
        ),
      ),
    );
  }
}
