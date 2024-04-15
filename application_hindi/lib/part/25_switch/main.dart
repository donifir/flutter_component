import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Switch"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                // height: 1000,
                // width: 1000,
                child: Switch(
                  activeColor: Colors.amber,
                  inactiveTrackColor: Colors.red,
                  activeTrackColor: Colors.green,
                  inactiveThumbColor: Colors.indigo,
                  activeThumbImage:const AssetImage('images/972-200x150.jpeg'),
                  inactiveThumbImage:const  AssetImage('images/972-200x150.jpeg'),
                  value: statusSwitch,
                  onChanged: (value){
                    setState(() {
                      statusSwitch=!statusSwitch;
                    });
                    print(statusSwitch);
                  },
                ),
              ),
              const SizedBox(height: 25,),
              Text((statusSwitch==true)?"Switch On":"Switch Off",
              style:const  TextStyle(fontSize: 35),)
            ],
          ),
        ),
      ),
    );
  }
}
