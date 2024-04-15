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
          title: const Text(
            'text style',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: Text(
            'change font, coba ini adalah aplikasi coba, coba ini adalah aplikasi coba, coba ini adalah aplikasi coba, coba ini adalah aplikasi coba, coba ini adalah aplikasi coba,',
            maxLines: 3, //max baris
            overflow: TextOverflow.ellipsis, // kalu container tidak cukup ada ....
            textAlign: TextAlign.center,

            style: TextStyle(
                backgroundColor: Colors.amber,
                color: Colors.black,
                fontFamily: "TiltNeon",
                fontSize: 29,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
                decoration: TextDecoration.lineThrough, //ada coretan di text
                decorationStyle: TextDecorationStyle.wavy, //bentuk coratan bosa dot dll
                decorationColor: Colors.blue,
                decorationThickness: 2, // tebal decoration
                ),
          ),
        ),
      ),
    );
  }
}
