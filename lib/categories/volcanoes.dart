import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../home1.dart';
import '../../search.dart';
import 'nav/volcanoes1.dart';
import '../../favorite.dart';

class VolcanoesPage extends StatefulWidget {
  const VolcanoesPage({Key? key}) : super(key: key);
  @override
  _MyVolcanoesPageState createState() => _MyVolcanoesPageState();
}

class _MyVolcanoesPageState extends State<VolcanoesPage> {

  int _selectedIndex = 2;
  final List<Widget> _widgetOptions = [
    Home_1(),
    FavoritePage(),
    VolcanoesNavPage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final PythonImage =
    //   'https://www.freepngimg.com/download/android/72537-icons-python-programming-computer-social-tutorial.png';

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),

      //
      bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          color: const Color.fromRGBO(255, 191, 116, 1),
          animationDuration: const Duration(milliseconds: 300),
          items: [
            const Icon(Icons.home, color: Colors.white),
            const Icon(Icons.favorite, color: Colors.white),
            const Icon(Icons.assistant, color: Colors.white),
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
