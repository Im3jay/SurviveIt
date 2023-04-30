import 'package:flutter/material.dart';
import 'categories/firstAid.dart';
import 'categories/volcanoes.dart';
import 'categories/earthquakes.dart';
import 'categories/tsunamis.dart';
import 'categories/emergencyCall.dart';
import 'home_page.dart';
import 'favorite.dart';

class search extends StatefulWidget {
  final List<String> list = [
    "Earthquake",
    "earthquake",
    "Volcanoes",
    "volcanoes",
    "Emergency",
    "emergency",
    "Call",
    "call",
    "First Aid",
    "first Aid",
    "First",
    "first",
    "Aid",
    "aid",
    "Tsunamis",
    "tsunamis",
    "Tsunami",
    "tsunami",
    "Home",
    "Favorites",
    "Home",
    "home",
    "favorite",
    "Favorite"
  ];

  @override
  _SearchState createState() => _SearchState();
}

String selectedResult = "";

class _SearchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: Search(widget.list));
            },
            icon: const Icon(Icons.search),
          )
        ],
        centerTitle: true,
        title: const Text('Search Bar'),
      ),
      body: ListView.builder(
        itemCount: widget.list.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            widget.list[index],
          ),
        ),
      ),
    );
  }
}

class Search extends SearchDelegate {
  void displaySearch(BuildContext context) {
    if (selectedResult == "Earthquake" || selectedResult == "earthquake") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const EarthquakePage()));
    } else if (selectedResult == "Volcanoes" || selectedResult == "volcanoes") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const VolcanoesPage()));
    } else if (selectedResult == "Emergency" ||
        selectedResult == "emergency" ||
        selectedResult == "Call" ||
        selectedResult == "call") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const EmergencyCallPage()));
    } else if (selectedResult == "First Aid" || selectedResult == "first aid" ||
               selectedResult == "First" ||
               selectedResult == "first" ||
               selectedResult == "Aid" ||
               selectedResult == "aid" ) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const FirstAidPage()));
    } else if (selectedResult == "Tsunamis" ||
        selectedResult == "tsunamis" ||
        selectedResult == "Tsunami" ||
        selectedResult == "tsunami" ) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const TsunamisPage()));
    }
    else if (selectedResult == "home" ||
        selectedResult == "Home") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    }
    else if (selectedResult == "favorite" ||
        selectedResult == "Favorite") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FavoritePage()));
    }
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox.shrink();
  }

  final List<String> listExample;
  Search(this.listExample);

  List<String> recentList = ["Home", "Favorite"];

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList //In the true case
        : suggestionList.addAll(listExample.where(
            // In the false case
            (element) => element.contains(query),
          ));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          leading: query.isEmpty ? const Icon(Icons.access_time) : const SizedBox(),
          onTap: () {
            selectedResult = suggestionList[index];
            showResults(context);
            displaySearch(context);
          },
        );
      },
    );
  }
}
