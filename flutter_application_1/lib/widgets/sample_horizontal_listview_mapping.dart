import 'package:flutter/material.dart';

class SampleHorizontalMappingListview extends StatelessWidget {
  SampleHorizontalMappingListview({super.key});
  final List colorCodes = [900,800,700,600,500,400,300,200,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SampleHorizontalMappingListview',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: SizedBox(
        height: 130,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index){
            return CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: 
                NetworkImage('https://i.pravatar.cc/150?img=$index'),
              ),
            );
          },
          itemCount: colorCodes.length,
        ),
      ),
    );
  }
}
