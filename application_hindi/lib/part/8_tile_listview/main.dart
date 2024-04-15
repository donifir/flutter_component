import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('List Tile',
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        body: ListView(
          children: const [
            ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 11),
                leading: CircleAvatar(),
                title: Text('Sandika galih'),
                subtitle: Text('ini adalah subtile dari saya'),
                trailing: Text('10.00 pm')),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: CircleAvatar(),
                title: Text('Sandika galih'),
                subtitle: Text('ini adalah subtile dari saya'),
                trailing: Text('10.00 pm')),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: CircleAvatar(),
                title: Text('Sandika galih'),
                subtitle: Text('ini adalah subtile dari saya'),
                trailing: Text('10.00 pm')),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: CircleAvatar(),
                title: Text('Sandika galih'),
                subtitle: Text('ini adalah subtile dari saya'),
                trailing: Text('10.00 pm')),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
