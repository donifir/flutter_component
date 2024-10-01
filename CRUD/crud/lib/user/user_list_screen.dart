import 'package:crud/models/user.dart';
import 'package:crud/service/user_service.dart';
import 'package:crud/user/detail_user_screen.dart';
import 'package:flutter/material.dart';
import 'edit_user_screen.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final UserService _userService = UserService();
  late Future<List<User>> _users;

  @override
  void initState() {
    super.initState();
    _users = _userService.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: FutureBuilder<List<User>>(
        future: _users,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No users found'));
          } else {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  onTap: () {
                    // Navigate to user detail screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserDetailScreen(user: user)),
                    );
                  },
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          // Navigate to edit user screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditUserScreen(user: user)),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () async {
                          // Delete the user
                          await _userService.deleteUser(user.id);
                          setState(() {
                            _users = _userService.getUsers();
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/create');
      //   },
      //   child: Icon(Icons.add),
      // ),
       floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigator.pushNamed(context, '/create');
          final result = await Navigator.pushNamed(context, '/create');
          if (result == true) {
            setState(() {
              _users = _userService.getUsers(); // Ambil ulang data dari server
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
