import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SamplePading extends StatelessWidget {
  const SamplePading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top:100),
      child: Text('ini adalah contoh pading untuk nav screen text bold',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}