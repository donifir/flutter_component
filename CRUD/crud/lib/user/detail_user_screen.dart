import 'package:crud/models/user.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  UserDetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${user.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Email: ${user.email}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
