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

class EmergencyCallNavPage extends StatefulWidget {
  @override
  _EmergencyCallNavPageState createState() => _EmergencyCallNavPageState();
}

class _EmergencyCallNavPageState extends State<EmergencyCallNavPage> {

  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();

    const url = 'https://www.youtube.com/watch?v=W6NZfCO5SIk';

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
    const url = 'https://www.javascript.com/';
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
            title: const Text(' Emergency Call '),
          ),
          body: Container(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                const SizedBox(height: 10),
                const Text('HOTLINE',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                
                
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );

}
