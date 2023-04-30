import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project1/navigate.dart';
import 'categories/tsunamis.dart';
import 'categories/volcanoes.dart';
import 'categories/earthquakes.dart';
import 'categories/emergencyCall.dart';
import 'categories/firstAid.dart';
import 'search.dart';

class Home_1 extends StatefulWidget {
  @override
  _Home_1State createState() => _Home_1State();
}

class _Home_1State extends State<Home_1> {
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
          title: const Text('Home'),
        ),
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset('images/homeBackground.png',
                        fit: BoxFit.cover),
                  ),
                ),
                /* decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1581091878330-f5cf2a3b1564?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            fit: BoxFit.cover,
          )), */
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: GridView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                     
                      Container(
                          margin: const EdgeInsets.all(20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    highlightColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const FirstAidPage()));
                                    },
                                    child: Container(
                                        child: const Text('First Aid',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                backgroundColor:
                                                    Colors.transparent,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'images/home_icon/pythonImage.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue[400],
                                        )),
                                  )))),
                      Container(
                          margin: const EdgeInsets.all(20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    highlightColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EarthquakePage()));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: const Text('Java',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'images/home_icon/javaImage.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue[400],
                                        )),
                                  )))),
                      Container(
                          margin: const EdgeInsets.all(20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    highlightColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const TsunamisPage()));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: const Text('C++',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'images/home_icon/CPlusPlus.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue[400],
                                        )),
                                  )))),
                      Container(
                          margin: const EdgeInsets.all(20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    highlightColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const VolcanoesPage()));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: const Text('Dart',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'images/home_icon/dart.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue[400],
                                        )),
                                  )))),
                      Container(
                          margin: const EdgeInsets.all(20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    highlightColor:
                                        const Color(0xFF80D8FF).withOpacity(0.2),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EmergencyCallPage()));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        child: const Text('JavaScript',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'images/home_icon/javascript.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue[400],
                                        )),
                                  )))),
                    ],
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 15,
                        mainAxisExtent: 175),
                  ),
                )
              ],

              //
            )));
  }
}
