import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQuerywidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(title: const Text("Media Query"));
    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    

    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Builder'),
        ),
        body: Container(
          width: mediaQuerywidth,
          height: mediaQueryHeight*0.8, //apabila heigh ditambah tinggi MyContainer akan ikut bertambah
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyContainer(mediaQuerywidth),
              MyContainer(mediaQuerywidth),
              MyContainer(mediaQuerywidth),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  const MyContainer(this.widthApp);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return Container(
          width: widthApp*0.25,
          height: constraints.maxHeight*0.5,
          color: Colors.amber,
        );
      }),
    );
  }
}
