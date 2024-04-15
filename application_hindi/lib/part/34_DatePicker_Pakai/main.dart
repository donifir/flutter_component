import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  DateTime selectedDate = DateTime.now();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                    // initialDatePickerMode: DatePickerMode.year,
                    // initialEntryMode: DatePickerEntryMode.calendar,
                    // selectableDayPredicate: (day) {
                    //   if ((day.isBefore(
                    //         DateTime.now().subtract(
                    //           Duration(days: 2),
                    //         ),
                    //       )) &&
                    //       (day.isAfter(
                    //         DateTime.now().add(
                    //           Duration(
                    //             days: 2,
                    //           ),
                    //         ),
                    //       ))) {
                    //     return true;
                    //   }
                    //   return false;
                    // },
                    helpText: "Help Text",
                    cancelText: "Cancel Text",
                    confirmText: " Confirm Text",
                    fieldHintText: "Masukan Tanggal Lahir Anda",
                    fieldLabelText: "Field Label text",
                    // builder: (context, child) {
                    //   return Theme(
                    //     data: ThemeData.light(), 
                    //     child: child,
                    //     );
                    // },
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        selectedDate = value;
                      });
                    }
                  });
                },
                child: const Text('Date Picker'))
          ],
        ),
      ),
    );
  }
}
