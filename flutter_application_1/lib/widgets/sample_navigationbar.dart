import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/sample_columb_row.dart';
import 'package:flutter_application_2/widgets/sample_pading.dart';

class SampleNavigationBar extends StatefulWidget {
  const SampleNavigationBar({super.key});

  @override
  State<SampleNavigationBar> createState() => _SampleNavigationBar();
}

class _SampleNavigationBar extends State<SampleNavigationBar> {
  int _selectedItem = 0;
  void _onTap(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  List<Widget> pages = [
    const SamplePading(),
    const SampleColumnRow(),
    const Text(
      'Favorit',
      style: TextStyle(fontSize: 30),
    ),
    const Text(
      'Setting',
      style: TextStyle(fontSize: 30),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SampleNavigationBar',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body:  Center(
        child: pages[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        selectedFontSize: 17,
        iconSize: 30,
        showUnselectedLabels: false,
        currentIndex: _selectedItem,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorit'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
