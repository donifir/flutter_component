import 'package:flutter/material.dart';

class SampleMappingListview extends StatelessWidget {
  SampleMappingListview({super.key});
  final List colorCodes = [900,800,700,600,500,400,300,200,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'mapping listview',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.purple[colorCodes[index]],
            height: 100,
          );
        },
        itemCount: colorCodes.length,
      ),
    );
  }
}
