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
            color: Colors.white,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: GridView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const FirstAidPage()));
                      },
                        child :
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(249, 238, 223, 1),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(25),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                    AssetImage('images/home_icon/firstAid.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(width: 30),
                              const Expanded(
                                child: Text(
                                  'First Aid',
                                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const EarthquakePage()));
                        },
                        child :
                        Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 238, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.all(25),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('images/home_icon/earthquakes.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                const Expanded(
                                  child: Text(
                                    'Earthquakes',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const TsunamisPage()));
                        },
                        child :
                        Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 238, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.all(25),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('images/home_icon/tsunamis.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                const Expanded(
                                  child: Text(
                                    'Tsunamis',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const VolcanoesPage()));
                        },
                        child :
                        Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 238, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.all(25),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('images/home_icon/volcano.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                const Expanded(
                                  child: Text(
                                    'Volcanoes',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const EmergencyCallPage()));
                        },
                        child :
                        Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 238, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.all(25),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                      AssetImage('images/home_icon/emergencyCall.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                const Expanded(
                                  child: Text(
                                    'Emergency Call',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                    ],
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 15,
                            mainAxisExtent: 175),
                  ),
                )
              ],

              //
            )
        )
    );
  }
}
