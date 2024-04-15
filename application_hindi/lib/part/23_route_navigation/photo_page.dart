import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});
  static const nameRoute = "/photopage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Photo Page"),
        ),
        body: const Center(
          child: Text(
            "PHOTO PAGE",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ));
  }
}
