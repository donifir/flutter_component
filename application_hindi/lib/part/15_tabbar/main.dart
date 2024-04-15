import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<Tab> myTab = [
    const Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    const Tab(icon: Icon(Icons.build), text: "Tab 2"),
    const Tab(icon: Icon(Icons.accessibility_rounded), text: "Tab 3")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title:const Text("My Apps"),
            bottom: TabBar(
              
              labelColor: Colors.pinkAccent,
              unselectedLabelColor: Colors.white,
              
              labelStyle:const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle:const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              
              indicator:const  BoxDecoration(
                // color: Colors.amber,
                // borderRadius: BorderRadius.circular(50),
                border:  Border(
                  bottom: BorderSide(
                    color: Colors.indigo,
                    width: 5
                  ),
                ),
              ),
              tabs: myTab,
            ),
          ),
        ),
      ),
    );
  }
}
