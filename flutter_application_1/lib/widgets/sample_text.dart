import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  const SampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Widget Text',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          //colom agar bisa multi component
          children: [
            Container(
              height: 200,
              width: 300,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                  'mari belajar flutter bersama saya aja, mari belajar flutter bersama saya ajamari belajar flutter bersama saya aja'),
            ),
            Container(
              height: 200,
              width: 300,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text(
                '''mari belajar flutter bersama saya aja, mari belajar flutter bersama saya ajamari belajar flutter bersama saya aja''',
                // textAlign: TextAlign.center,
                textAlign: TextAlign.end,
                // overflow: TextOverflow.ellipsis,//dipotong 1 baris pertama saja
                // overflow: TextOverflow.visible,//text akan tembus melampui container
                // overflow: TextOverflow.fade,//text akan terpotong atau menyesuaikan container dengan shadow
                overflow: TextOverflow
                    .clip, //text akan terpotong atau menyesuaikan container
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationStyle: TextDecorationStyle.dashed,
                    letterSpacing: 5,
                    wordSpacing: 10),
              ),
            ),
          ],
        ));
  }
}
