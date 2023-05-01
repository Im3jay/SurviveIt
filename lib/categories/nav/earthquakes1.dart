import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../search.dart';
import 'dart:io';

class StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class EarthquakesNavPage extends StatefulWidget {
  @override
  _EarthquakesNavPageState createState() => _EarthquakesNavPageState();
}

class _EarthquakesNavPageState extends State<EarthquakesNavPage> {
  int pressedButtonNo = 0;

  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();

    const url = 'https://www.youtube.com/watch?v=eIrMbAQSU34';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: false,
        enableCaption: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  _launchURLSDK() async {
    const url = 'https://www.oracle.com/java/technologies/downloads/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(255, 191, 116, 1),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => search()));
                },
                icon: Icon(Icons.search),
              )
            ],
            centerTitle: true,
            title: Text('Earthquakes'),
          ),
          body: Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(16),
              children: <Widget>[
                SizedBox(height: 10),
                Text('What is Earthquake?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(249, 238, 223, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 30.0,
                          spreadRadius: 1.0,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.all(8),
                  child: Text(
                      '''An earthquake is an intense shaking of Earth's surface. The shaking is caused by movements in Earth's outermost layer.''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                SizedBox(height: 20),
                Text('Things to remember during Earthquakes!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(227,64,64,1),
                      backgroundColor: Colors.transparent,
                    )),
                SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                          image: DecorationImage(
                            image:
                                AssetImage('images/earthquakes_img/duck.png'),
                            fit: BoxFit.cover,
                          ),
                          // border: Border.all(
                          //   width: 1,
                          // ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        child: Text(
                          'DUCK under strong table or other protection.',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                          image: DecorationImage(
                            image:
                                AssetImage('images/earthquakes_img/cover.png'),
                            fit: BoxFit.cover,
                          ),
                          // border: Border.all(
                          //   width: 1,
                          // ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        child: Text(
                          'COVER your head with your hands or other objects.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                          image: DecorationImage(
                            image:
                                AssetImage('images/earthquakes_img/hold.png'),
                            fit: BoxFit.cover,
                          ),
                          // border: Border.all(
                          //   width: 1,
                          // ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 30),
                      const Expanded(
                        child: Text(
                          'HOLD the position until safe',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
}
