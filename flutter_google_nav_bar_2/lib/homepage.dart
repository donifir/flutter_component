import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child:const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            padding: EdgeInsets.all(10),
            gap: 8, 
            // onTabChange: (index){
            //   print(index);
            // },
            tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.favorite_border, text: 'Likes'),
            GButton(icon: Icons.search, text: 'Search'),
            GButton(icon: Icons.settings, text: 'Settings'),
          ]
          ),
        ),
      ),
    );
  }
}