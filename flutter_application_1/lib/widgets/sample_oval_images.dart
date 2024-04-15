import 'package:flutter/material.dart';

class SampleOvalImage extends StatelessWidget {
  const SampleOvalImage({super.key});

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
          Image.asset('assets/images/sample-images.jpeg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/sample-images.jpeg'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/sample-images.jpeg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/sample-images.jpeg',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/sample-images.jpeg'),
                      fit: BoxFit.fill)))
        ],
      ),
    );
  }
}
