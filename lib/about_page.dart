import 'package:flutter/material.dart';

import 'home_page.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
          backgroundColor: Colors.indigoAccent.shade700,
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
              height: 1800,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 40),
                    Image.asset('images/banner.jpg'),
                    SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[],
                          ),
                          SizedBox(height: 40),
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://source.unsplash.com/random'),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        '   Florencio, Daniel Mark C.',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Other widgets in the column
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://source.unsplash.com/random'),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        '   Herrera, Mikaela Mae D.',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Other widgets in the column
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://source.unsplash.com/random'),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        '   Medrano, Yvette Marionne Y.',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Other widgets in the column
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://source.unsplash.com/random'),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        '   Noprada, Shane Nicole B.',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Other widgets in the column
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://source.unsplash.com/random'),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        '   Revilla, Aarone John',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Other widgets in the column
                            ],
                          ),
                        ],
                      ),
                    )
                  ]))
        ])));
  }
}
