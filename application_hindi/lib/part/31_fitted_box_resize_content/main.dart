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
              'FittedBox Box untuk resize content agar sesuai ukuran conatiner'),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300,
            height: 100,
            child: FittedBox(
              alignment: Alignment.centerRight,
              fit: BoxFit.fill,
              child: Image.network('https://picsum.photos/500/500'),
            ),
          ),
        ),
      ),
    );
  }
}
