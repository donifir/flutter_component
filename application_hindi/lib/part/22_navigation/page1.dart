import 'package:flutter/material.dart';
import 'package:flutter_application_hindi/part/22_navigation/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page Satu"),
        ),
        body: const Center(
          child: Text(
            "INI PAGE 1",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return const Page2();
                },
              ),
            );
          },
          child:const Icon(Icons.keyboard_arrow_right),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
