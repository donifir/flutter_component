import 'package:crud/user/create_user_screen.dart';
import 'package:crud/user/user_list_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD with Dio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => UserListScreen(),
        '/create': (context) => CreateUserScreen(),
        // Define other routes here for edit, detail, etc.
      },
    );
  }
}
