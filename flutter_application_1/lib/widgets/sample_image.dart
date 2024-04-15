import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Oval images',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Image.network('https://picsum.photos/200/150'),
          Container(
            margin: const EdgeInsets.all(5), //efek bisa justify center
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
             ),
            child: Image.network(
              'https://picsum.photos/200/150',
              alignment: Alignment.centerRight,//untuk atur mau pisisi dimana
              color: Colors.red,//untuk menambahkan warna
              colorBlendMode: BlendMode.softLight, //menambahkan efek memanggil warna diatas
              fit: BoxFit.contain,//unruk megatue fit
              repeat: ImageRepeat.repeatY,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5), //efek bisa justify center
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Image.asset( //kalau ambil dari assets
              'assets/images/sample-images.jpeg',
              alignment: Alignment.centerRight,//untuk atur mau pisisi dimana
              color: Colors.red,//untuk menambahkan warna
              colorBlendMode: BlendMode.softLight, //menambahkan efek memanggil warna diatas
              fit: BoxFit.contain,//unruk megatue fit
              repeat: ImageRepeat.repeatY,
            ),
          ),
        ],
      ),
    );
  }
}
