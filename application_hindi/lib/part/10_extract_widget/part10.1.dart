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
          title: const Text('Extract Widget',
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        body: ListView(
          children:const [
            NewWidget(
              imageUrl: 'https://picsum.photos/id/1/200/300',
              title: "dava",
              subTitle: 'sub title ini',
            ),
            NewWidget(
              imageUrl: 'https://picsum.photos/id/2/200/300',
              title: "dika",
              subTitle: 'sub title ini',
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String imageUrl; // Remove the initialization here
  final String title;
  final String subTitle;

  const NewWidget({this.imageUrl = '', this.title= '', this.subTitle= ''});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl), // Use the provided imageUrl if not empty, otherwise fallback to a default image
        ),
        title: Text(title), // Use the provided title if not null, otherwise fallback to a default title
        subtitle: Text(subTitle), // Use the provided subTitle if not null, otherwise fallback to a default subtitle
        trailing: const Text('10.00 pm'));
  }
}

