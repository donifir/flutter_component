import 'package:flutter/material.dart';
import 'package:flutter_application_hindi/part/23_route_navigation/galery_page.dart';
import 'package:flutter_application_hindi/part/23_route_navigation/home_page.dart';
import 'package:flutter_application_hindi/part/23_route_navigation/photo_page.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => const HomePage(),
        GaleryPage.nameRoute: (context) => const GaleryPage(),
        PhotoPage.nameRoute: (context) => const PhotoPage(),
      },
    );
  }
}
