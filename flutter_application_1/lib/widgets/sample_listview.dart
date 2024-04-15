import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  const SampleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample List View',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple, 
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        reverse: true, //pemablkan order by desc
        children: [
          Container(
            color: Colors.purple,
            height: 100,
          ), Container(
            color: Colors.amber,
            height: 100,
          ),
           Container(
            color: Colors.amberAccent,
            height: 100,
          ),
           Container(
            color: Colors.blue,
            height: 100,
          ),
           Container(
            color: Colors.blueAccent,
            height: 100,
          ),
          Container(
            color: Colors.purple,
            height: 100,
          ), Container(
            color: Colors.amber,
            height: 100,
          ),
           Container(
            color: Colors.amberAccent,
            height: 100,
          ),
           Container(
            color: Colors.blue,
            height: 100,
          ),
           Container(
            color: Colors.blueAccent,
            height: 100,
          ),
        ],
      ),
    );
  }
}