import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: const TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah diklik");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("CONFIRM"),
                content: const Text("Are you sure to delete"),
                actions: [
                  OutlinedButton(
                    onPressed: () {
                      print("KLik No");
                      setState(() {
                        data = "FALSE";
                      });

                      Navigator.of(context).pop(false);
                    },
                    child: Text("No"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print("Klik Yes");
                      setState(() {
                        data = "TRUE";
                      });
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes"),
                  ),
                ],
              );
            },
          ).then((value) {
            return print(value);
          });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
