import 'package:flutter/material.dart';

class GaleryPage extends StatefulWidget {
  const GaleryPage({super.key});
  static const nameRoute = '/gallerypage';

  @override
  State<GaleryPage> createState() => _GaleryPageState();
}

class _GaleryPageState extends State<GaleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galery Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Gallery PAGE",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "<<Back",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/photopage');
              },
              child: const Text(
                "Next >>",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            )
          ]),
        ],
      )),
    );
  }
}
