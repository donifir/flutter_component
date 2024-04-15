import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,

          title: Container(
            color: Colors.black,
            height: 35,
          ),

          leading: Container(
            color: Colors.blueAccent,
          ),
          leadingWidth: 100,

          centerTitle: false,

          actions: [
            Container(
              width: 50,
              color: Colors.purple,
            )
            ],

            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(200),
              child: Container(
                width: 50,
                height: 200,
                color: Colors.black,
              ),
            ),

            flexibleSpace: Container(
              height: 200,
              color: Colors.green,
            ),
            
            
        ),
      ),
    );
  }
}
