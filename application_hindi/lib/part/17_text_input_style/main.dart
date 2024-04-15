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
          title: const Text('15 Input Form'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              showCursor: true,
              cursorColor: Colors.red,
              // autofocus: false,
              // enableSuggestions: false,
              // enableInteractiveSelection: false,
              // enabled: false,
              // obscureText: false,
              // obscuringCharacter: '=',
              // keyboardType: TextInputType.phone,
              // readOnly: true,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.none,
              obscureText: true,

              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),

              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    size: 35,
                  ),
                  border: OutlineInputBorder(),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    )
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    )
                  ),

                  prefixIcon: Icon(
                    Icons.add_a_photo,
                    size: 35,
                  ),

                  // suffixIcon: IconButton(
                  //   icon:Icon(Icons.remove_red_eye),
                  //   onPressed: () {
                      
                  //   },
                  // ),

                  hintText: "please your name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  labelText: "full name",
                  labelStyle: TextStyle(
                    color: Colors.black
                  )
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
