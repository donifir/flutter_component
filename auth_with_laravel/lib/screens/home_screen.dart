import 'package:auth_with_laravel/screens/login_screen.dart';
import 'package:auth_with_laravel/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final storage = new FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    readToken();
  }

  void readToken() async {
    dynamic tokens = await storage.read(key: 'token');
    if (tokens != null) {
      String token = tokens;
      print(token);
      Provider.of<Auth>(context, listen: false).tryToken(token);
    } else {
       print('null');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth With Sanctum'),
      ),
      body: const Center(
        child: Text('this home screen'),
      ),
      drawer: Drawer(child: Consumer<Auth>(builder: (context, auth, child) {
        if (!auth.authenticated) {
          return ListView(
            children: [
              ListTile(
                title: const Text('Login'),
                leading: const Icon(Icons.login),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                  print(auth.user.name);
                },
              ),
            ],
          );
        } else {
          return ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      auth.user.name,
                      // 'foni',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      auth.user.email,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Logout'),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Provider.of<Auth>(context, listen: false).logout();
                },
              )
            ],
          );
        }
      })),
    );
  }
}
