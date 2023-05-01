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

class VolcanoesNavPage extends StatefulWidget {
  @override
  _VolcanoesNavPageState createState() => _VolcanoesNavPageState();
}

class _VolcanoesNavPageState extends State<VolcanoesNavPage> {
 
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();

    const url = 'https://www.youtube.com/watch?v=Ej_Pcr4uC2Q';

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
    const url = 'https://flutter.io';
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
            backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => search()));
                },
                icon: const Icon(Icons.search),
              )
            ],
            centerTitle: true,
            title: const Text('Volcanoes'),
          ),
          body: Container(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                 SizedBox(height: 10),
                Text('What is Volcano?',
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
                      '''A volcano is a land form (usually a mountain) where molten rock erupts through the surface of the planet.
                         ''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                SizedBox(height: 20),
                Text('To do during Volcanic Eruption',
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
                                AssetImage('images/volcano_img/Clothes.png'),
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
                          'Keep as much of your skin covered as possible.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
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
                                AssetImage('images/volcano_img/Radio.png'),
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
                          'Listen to local station',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
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
                                AssetImage('images/volcano_img/Face mask.png'),
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
                          'Wear a dust mask designed to protect from small articles.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
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
                                AssetImage('images/volcano_img/Window.png'),
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
                          'Close all window and doors to keep volcanic ash from entering.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
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
                                AssetImage('images/volcano_img/Glass.png'),
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
                          'Protect  your eyes by wearing googles or eyeglasses.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
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
                                AssetImage('images/volcano_img/Telephone.png'),
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
                          'Take note of emergency numbers.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 19),
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
                                AssetImage('images/volcano_img/First aid kit.png'),
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
                          'Ready your family lifeline kit for possible evacuation.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
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
                                AssetImage('images/volcano_img/Pet.png'),
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
                          'Bring animals and livestock to designated evacuation areas.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
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
