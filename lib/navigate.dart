import 'package:flutter/material.dart';

import 'categories/tsunamis.dart';
import 'categories/earthquakes.dart';
import 'categories/emergencyCall.dart';
import 'categories/firstAid.dart';
import 'categories/volcanoes.dart';

import 'Home_1.dart';
import 'search.dart';

void mary(int g) {
  int rawr = g;
}

class Navigate extends StatefulWidget {
  var value;

  Navigate({Key? mykey, this.value}) : super(key: mykey);

  @override
  _NavigateState createState() => _NavigateState(value);
}

class _NavigateState extends State<Navigate> {
  var value;
  var pleaseeeee;

  _NavigateState(this.value);

  late int fudge = value;
  late int _selectedIndex = value;
  final List<Widget> _widgetOptions = [
    Home_1(),
    search(),
    const EarthquakePage(),
    const TsunamisPage(),
    const EmergencyCallPage(),
    const FirstAidPage(),
    const VolcanoesPage(),
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
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => search()));
            },
            icon: const Icon(Icons.search),
          )
        ],
        centerTitle: true,
        title: Text("$value"),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),

      //
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          showSelectedLabels: false, // <-- HERE
          showUnselectedLabels: false,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.w500, fontFamily: "Soleil"),
          unselectedLabelStyle:
              const TextStyle(fontFamily: "Soleil", color: Colors.white),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(
              icon: Icon(Icons.star_outline_outlined),
              label: 'Favorite',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.brightness_1), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.brightness_1), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.brightness_1), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.brightness_1), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.brightness_1), label: 'Home'),
          ],
          fixedColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
      print(value);
    });
  }
}
