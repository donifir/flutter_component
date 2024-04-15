import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/sample_contact_listview_mapping.dart';
import 'package:flutter_application_2/widgets/sample_container.dart';
import 'package:flutter_application_2/widgets/sample_horizontal_listview_mapping.dart';
import 'package:flutter_application_2/widgets/sample_navigationbar.dart';
// import 'package:flutter_application_2/widgets/sample_listview.dart';
// import 'package:flutter_application_2/widgets/sample_listview_mapping.dart';
// import 'package:flutter_application_2/widgets/sample_image.dart';
// import 'package:flutter_application_2/widgets/sample_oval_images.dart';
// import 'package:flutter_application_2/widgets/sample_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.deepPurple,

        // useMaterial3: true,
      ),
      
      home: const SampleNavigationBar(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Belajar Widget'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const SampleContainer(),
    );
  }
}
