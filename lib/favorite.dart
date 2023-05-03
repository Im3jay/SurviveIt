import 'package:flutter/material.dart';
import 'categories/earthquakes.dart';
import 'categories/volcanoes.dart';
import 'categories/emergencyCall.dart';
import 'categories/firstAid.dart';
import 'categories/tsunamis.dart';

class FavoritePage extends StatefulWidget {
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool _isPressed = false;
  void _myCallback() {
    setState(() {
      _isPressed = true;
    });
  }

  List<String> mainDataList = [
    "First Aid",
    "Earthquakes",
    "Tsunamis",
    "Volcanoes",
    "Emergency Call",
  ];

  static List<String> favoriteDataList = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255,191,116,1),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.article_rounded)),
              Tab(icon: Icon(Icons.favorite)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: mainDataList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            mainDataList[index],
                            style: const TextStyle(fontSize: 19.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isPressed == false ? _myCallback : null;
                            favoriteDataList.add(mainDataList[index]);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 10, 20, 75),
                          ),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                );
              },
            ),
            favoriteDataList.isEmpty
                ? const Center(
                    child: Text(
                      'There are no favorites yet!',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : ListView.builder(
                    itemCount: favoriteDataList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  favoriteDataList[index],
                                  style: const TextStyle(fontSize: 19.0),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  favoriteDataList
                                      .remove(favoriteDataList[index]);
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(153,114,69,1),
                                ),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                if (favoriteDataList[index] == "First Aid") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const FirstAidPage()));
                                } else if (favoriteDataList[index] == "Earthquakes") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const EarthquakePage()));
                                } else if (favoriteDataList[index] ==
                                    "Volcanoes") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const VolcanoesPage()));
                                } else if (favoriteDataList[index] ==
                                    "Tsunamis") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const TsunamisPage()));
                                } else if (favoriteDataList[index] == "Emergency Call") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const EmergencyCallPage()));
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(153,114,69,1),
                                ),
                              ),
                              child: Column(
                                // Replace with a Row for horizontal icon + text
                                children: const <Widget>[
                                  Icon(
                                    Icons.call_made_rounded,
                                    color: Colors.white,
                                  ),
                                  //Text(favoriteDataList[index])
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
