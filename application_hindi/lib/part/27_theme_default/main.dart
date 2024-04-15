import 'package:flutter/material.dart';

void main() {
  runApp(ThemeWidget());
}

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xff2F1E06),
        appBarTheme: const AppBarTheme(color: Color(0xff2F1E06)),
        textTheme: const TextTheme(
          bodyMedium:
              TextStyle(color: Colors.amber, backgroundColor: Colors.red),
          bodySmall: TextStyle(color: Colors.blue, backgroundColor: Colors.red),
          bodyLarge: TextStyle(color: Colors.blue, backgroundColor: Colors.red),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            iconSize: 50, backgroundColor: Colors.amber),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'warna text ubah dari theme',
              style: TextStyle(
                fontSize: 35,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'this is text',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('TextButton',
                  style: TextStyle(
                    fontSize: 35,
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mediation),
      ),
    );
  }
}
