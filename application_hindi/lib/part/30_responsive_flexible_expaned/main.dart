import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flexible, Explanded'),
        ),
        body: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,  //FlexFit adalah fungsi untuk menempati ruang sisanya 
              flex: 2, //tidak harus menggunakan flex
              child: Container(
                color: Colors.amber,
              ),
            ),
            Expanded( //explaned adalah fungsi untuk menempati ruang sisanya tanpa menggunakan Flexible->FlexFit
              flex: 5, //tidak harus menggunakan flex
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
