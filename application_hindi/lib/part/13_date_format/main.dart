import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text('13 Date Format'),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()),
            style: TextStyle(fontSize: 25),
          )
          ),
      )
    );
  }
}
