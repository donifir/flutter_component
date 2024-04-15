import 'package:flutter/material.dart';
import 'package:flutter_application_hindi/part/26_model/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: HomePage(),
   );
  }
}
