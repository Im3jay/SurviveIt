import 'dart:io';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';
import '../../search.dart';

class StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class TsunamisNavPage extends StatefulWidget {
  @override
  _MyCPlusPlusNavPageState createState() => _MyCPlusPlusNavPageState();
}

class _MyCPlusPlusNavPageState extends State<TsunamisNavPage> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();

    const url = 'https://www.youtube.com/watch?v=ZzaPdXTrSb8';

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

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            title: const Text('Tsunamis'),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
          ),
          body: Container(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                SizedBox(height: 10),
                Text('What is Tsunami?',
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
                          color: Color(0xFFB4AAAA),
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
                      '''A series of waves caused by an earthquake, underwater volcanic eruption, landslide or other abrupt disturbance.''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                SizedBox(height: 20),
                Text('Natural Tsunami Warning Signs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
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
                          color: Color.fromARGB(255, 251, 241, 241),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                          image: DecorationImage(
                            image:
                                AssetImage('images/tsunamis_img/Earthquake.png',),
                          
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
                          'Feel a strong or long earthquake',
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
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 251, 241, 241),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                          image: DecorationImage(
                            image:
                                AssetImage('images/tsunamis_img/Sea.png'),
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
                          'See a sudden rise or fall of the ocean',
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
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 251, 241, 241),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 117, 117, 117),
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                          image: DecorationImage(
                            image:
                                AssetImage('images/tsunamis_img/Ear.png'),
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
                          'Hear a loud roar from the ocean',
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
        ),
      );
}
