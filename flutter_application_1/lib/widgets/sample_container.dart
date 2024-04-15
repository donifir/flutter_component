import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 30, top: 30),
      height: 300,
      width: 300,
      decoration:  BoxDecoration(
        color: Colors.blue,
        border:Border.all(width: 1, color: Colors.pink),
        borderRadius: BorderRadius.circular(150)
      ),
      child: const Text(
          'selamat pagi cekgu lorem selamat pagi cekgu loremselamat pagi cekgu lorem'),
    );
  }
}
