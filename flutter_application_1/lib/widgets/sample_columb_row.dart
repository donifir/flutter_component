import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start, // untuk mengatur posisi
      crossAxisAlignment: CrossAxisAlignment.start, // untuk mengatur posisi
      children: [
        _box(),
        Column(
          children: const[
            Text('title'),
            Text('Description'),
          ],
        ),
        _box(),
        Column(
          children: const[
            Text('title'),
            Text('Description'),
          ],
        )
      ],
    );
  }

  Widget _box(){
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all()
      ),
    );
  }
}