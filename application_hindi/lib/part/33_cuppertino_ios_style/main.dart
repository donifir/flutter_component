import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuppertino'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showDatePicker(
            //   context: context,
            //   initialDate: DateTime.now(),
            //   firstDate: DateTime(1999),
            //   lastDate: DateTime(2023)
            // );
            
            showCupertinoModalPopup(
                context: context,
                builder: (context) {
                  return Container(
                    height: mediaQueryHeight * 0.4,
                    color: Colors.amber,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (datetime) {
                        print(datetime);
                      },
                      initialDateTime: DateTime.now(),
                    ),
                  );
                });
            // showDialog(
            //   context: context,
            //   builder: (context) {
            //     return CupertinoAlertDialog(
            //       title: const Text('Dlete Item'),
            //       content: const Text('Are you sure to delete this item'),
            //       actions: [
            //         TextButton(onPressed: () {}, child: const Text('no')),
            //         TextButton(onPressed: () {}, child: const Text('yes'))
            //       ],
            //     );
            //   },
            // );
          },
          child: const Text('Date picker'),
        ),
      ),
    );
  }
}
