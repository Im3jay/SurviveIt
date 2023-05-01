import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Us'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
              height: 1800,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 205, 147, 1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              '   What is SurviveIt?                               ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.only(left: 30, right: 30,),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              
                              color: const Color.fromRGBO(249,238,223,1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              '''This application is designed to help your children help themselves. Whether that\’s in an emergency scenario or an everyday situation where basic first aid is necessary. Teaching first aid to children is something that will make you and your children more safe and confident in the outdoors. ''',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                             
                            ),
                          ),
                          const SizedBox(height: 20),
                    Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 205, 147, 1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              '   Why use SurviveIt?                               ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.only(left: 30, right: 30,),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              
                              color: const Color.fromRGBO(249,238,223,1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              '''The purpose of SurviveIt helps users understand and give knowledge in handling the medical emergencies as quickly as possible and. In an emergency, a delay of just a single minute can cause irreconcilable damage. These kits offer basic and instant care for common medical injuries like injuries, burns, cuts etc. ''',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                             
                            ),
                          ),
                    Image.asset(
                      'images/about/developers.png',
                      width: 300,
                      height: 300,
                    ),
                    Container(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 205, 147, 1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              '   The Developers                                   ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          
                          const SizedBox(height: 40),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage("images/about/den.png"),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 15),
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(255, 221, 183, 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Text(
                                        '   Florencio, Daniel Mark C.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
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
                          
                          Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundImage:AssetImage("images/about/mika.png"),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 15),
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(255, 221, 183, 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Text(
                                        '   Herrera, Mikaela Mae D.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
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
                         
                          Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage("images/about/yvette.png"),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                         const EdgeInsets.symmetric(vertical: 15),
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(255, 221, 183, 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Text(
                                        '   Medrano, Yvette Marionne Y.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
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
                          
                          Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage("images/about/shane.png"),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 15),
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(255, 221, 183, 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Text(
                                        '   Noprada, Shane Nicole B.',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
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
                          
                          Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage("images/about/jay.png"),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 15),
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(255, 221, 183, 1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Text(
                                        '   Revilla, Aarone John',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
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
