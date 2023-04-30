import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
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

class FirstAidNavPage extends StatefulWidget {
  @override
  _FirstAidNavPageState createState() => _FirstAidNavPageState();
}

class _FirstAidNavPageState extends State<FirstAidNavPage> {
  late YoutubePlayerController controller;
  static final expanded_text2 = ' ';

  static final expanded_text = ' ';
  @override
  void initState() {
    super.initState();

    const url = 'https://www.youtube.com/watch?v=Y8Tko2YC5hA';

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
            title: const Text(' First-Aid'),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
          ),
          body: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              
              const Text('What are the Equipment for First Aid?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('images/first_aid/bandAid.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is used for a small adhesive strip with a gauze pad for covering small wounds.',
                        
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('images/first_aid/safetyPin.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It fastens bandages or gauze by acting as a pointy clasp.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: const DecorationImage(
                          image: AssetImage('images/first_aid/thermometer.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is an instrument for determining temperature.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('images/first_aid/flashlight.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is a small portable light, uses batteries.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('images/first_aid/gauze.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is a loosely woven cotton surgical dressing. You use the pin to keep it in place.',
                        
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('images/first_aid/aspirin.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is a white drug used as a remedy for pain and fever.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('images/first_aid/ointment.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is a salve or unguent for application to the skin.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: const DecorationImage(
                          image: AssetImage('images/first_aid/cotton.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is a small ball of cotton that can be used for a variety of purposes (such as removing makeup or cleaning a wound).',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: const DecorationImage(
                          image: AssetImage('images/first_aid/scissors.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Text(
                        'It is a cutting instrument having two blades whose cutting edges slide past each other',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                          )
                        ],
                        image: const DecorationImage(
                          image: AssetImage('images/first_aid/painkillers.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        child: const Text(
                          'It is something (such as a drug) that relieves pain.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // ElevatedButton.icon(
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.lightBlue.shade900,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(30),
              //       ),
              //       // maximumSize: Size(90, 80),
              //       elevation: 10,
              //       padding: const EdgeInsets.symmetric(
              //         vertical: 10,
              //         horizontal: 0,
              //       ),
              //       textStyle: const TextStyle(
              //         fontFamily: 'Poppins',
              //         fontSize: 20,
              //       ),
              //     ),
              //     icon: const Icon(
              //       Icons.download,
              //       size: 22,
              //     ),
              //     label: const Text("Python Installation"),
              //     onPressed: () {
              //       const python_install =
              //           'https://www.python.org/downloads/';

              //       launch(python_install);
              //     }),
              
              // player,
              // const SizedBox(height: 10),
              // ElevatedButton.icon(
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.redAccent.shade700,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //     // maximumSize: Size(90, 80),
              //     elevation: 10,
              //     padding: const EdgeInsets.symmetric(
              //       vertical: 10,
              //       horizontal: 0,
              //     ),
              //     textStyle: const TextStyle(
              //       fontFamily: 'Poppins',
              //       fontSize: 20,
              //     ),
              //   ),
              //   icon: const Icon(
              //     Icons.play_arrow_sharp,
              //     size: 22,
              //   ),
              //   label: const Text("Play / Pause"),
              //   onPressed: () {
              //     //controller.toggleFullScreenMode();
              //     if (controller.value.isPlaying) {
              //       controller.pause();
              //     } else {
              //       controller.play();
              //     }
              //   },
              // ),
              
              // const SizedBox(height: 10),
              // ElevatedButton.icon(
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.lightBlue.shade900,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(30),
              //       ),
              //       // maximumSize: Size(90, 80),
              //       elevation: 10,
              //       padding: const EdgeInsets.symmetric(
              //         vertical: 10,
              //         horizontal: 0,
              //       ),
              //       textStyle: const TextStyle(
              //         fontFamily: 'Poppins',
              //         fontSize: 20,
              //       ),
              //     ),
              //     icon: const Icon(
              //       Icons.download,
              //       size: 22,
              //     ),
              //     label: const Text("Download PyCharm"),
              //     onPressed: () {
              //       const pycharm_install =
              //           'https://www.jetbrains.com/pycharm/download/#section=windows';

              //       launch(pycharm_install);
              //     }),
             
              
              // Container(
              //   decoration: BoxDecoration(
              //       color: Colors.grey[300],
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey.shade600,
              //           offset: const Offset(4.0, 4.0),
              //           blurRadius: 15.0,
              //           spreadRadius: 1.0,
              //         ),
              //         const BoxShadow(
              //           color: Colors.white,
              //           offset: Offset(-4.0, -4.0),
              //           blurRadius: 15.0,
              //           spreadRadius: 1.0,
              //         )
              //       ],
              //       //border: Border.all(color: Colors.blue, width: 2),
              //       borderRadius: const BorderRadius.all(Radius.circular(10))),
              //   padding: const EdgeInsets.all(8),
              //   child: const Text(
              //       'The integer data type is comprised of all the positive and negative whole numbers.\n\nEx.\n  num1 = 40\n  print(num1)',
              //       textAlign: TextAlign.justify,
              //       style: TextStyle(
              //         fontSize: 16,
              //         fontFamily: 'Poppins',
              //         color: Colors.black,
              //         backgroundColor: Colors.transparent,
              //       )),
              // ),
              
              // Container(
              //   decoration: BoxDecoration(
              //       color: Colors.grey[300],
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey.shade600,
              //           offset: const Offset(4.0, 4.0),
              //           blurRadius: 15.0,
              //           spreadRadius: 1.0,
              //         ),
              //         const BoxShadow(
              //           color: Colors.white,
              //           offset: Offset(-4.0, -4.0),
              //           blurRadius: 15.0,
              //           spreadRadius: 1.0,
              //         )
              //       ],
              //       //border: Border.all(color: Colors.blue, width: 2),
              //       borderRadius: const BorderRadius.all(Radius.circular(10))),
              //   padding: const EdgeInsets.all(8),
              //   child: const Text(
              //       'Floating-point numbers, or floats, refer to positive and negative decimal numbers.\n\nEx.\n  num2 = 3.14\n  print(num2)',
              //       textAlign: TextAlign.justify,
              //       style: TextStyle(
              //         fontFamily: 'Poppins',
              //         fontSize: 16,
              //         color: Colors.black,
              //         backgroundColor: Colors.transparent,
              //       )),
              // ),
             
              // ElevatedButton.icon(
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.lightBlue.shade900,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(30),
              //       ),
              //       // maximumSize: Size(90, 80),
              //       elevation: 10,
              //       padding: const EdgeInsets.symmetric(
              //         vertical: 10,
              //         horizontal: 0,
              //       ),
              //       textStyle: const TextStyle(
              //         fontFamily: 'Poppins',
              //         fontSize: 20,
              //       ),
              //     ),
              //     icon: const Icon(
              //       Icons.web,
              //       size: 22,
              //     ),
              //     label: const Text("Python Online Compiler"),
              //     onPressed: () {
              //       const python_gdb =
              //           'https://www.onlinegdb.com/online_python_compiler';

              //       launch(python_gdb);
              //     }),
              
              // const Text('Sample Source Code',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       fontSize: 25,
              //       fontFamily: 'Poppins',
              //       color: Colors.black,
              //       backgroundColor: Colors.transparent,
              //       fontWeight: FontWeight.bold,
              //     )),
              // buildCard(
              //   ' SIMPLE CALCULATOR',
              // ),
              // buildCard2(
              //   ' LOAN PAYMENT CALCULATOR',
              // ),
              
              // Container(
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey.shade600,
              //           offset: const Offset(4.0, 4.0),
              //           blurRadius: 15.0,
              //           spreadRadius: 1.0,
              //         ),
              //         const BoxShadow(
              //           color: Colors.white,
              //           offset: Offset(-4.0, -4.0),
              //           blurRadius: 15.0,
              //           spreadRadius: 1.0,
              //         )
              //       ],
              //       //border: Border.all(color: Colors.blue, width: 2),
              //       borderRadius: const BorderRadius.all(Radius.circular(10))),
              //   padding: const EdgeInsets.all(30),
              //   child: RichText(
              //       text: TextSpan(children: [
              //     const TextSpan(
              //         style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 24,
              //           fontWeight: FontWeight.bold,
              //           letterSpacing: 1,
              //           fontFamily: 'Poppins',
              //           // letterSpacing: 1,

              //           backgroundColor: Colors.transparent,
              //         ),
              //         text: "Coursera\n"),
              //     TextSpan(
              //         style: const TextStyle(
              //           color: Colors.blue, fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //           letterSpacing: 1,
              //           fontFamily: 'Poppins',
              //           // letterSpacing: 1,
              //           backgroundColor: Colors.transparent,
              //         ),
              //         text: "1. Python for Everybody Specialization\n",
              //         recognizer: TapGestureRecognizer()
              //           ..onTap = () {
              //             final String course =
              //                 "https://www.coursera.org/specializations/python";
              //             launch(course);
              //           }),
              //     TextSpan(
              //         style: const TextStyle(
              //           color: Colors.blue, fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //           letterSpacing: 1,
              //           fontFamily: 'Poppins',
              //           // letterSpacing: 1,
              //           backgroundColor: Colors.transparent,
              //         ),
              //         text:
              //             "2. Applied Data Science with Python Specialization\n",
              //         recognizer: TapGestureRecognizer()
              //           ..onTap = () {
              //             final String course2 =
              //                 "https://www.coursera.org/specializations/data-science-python";
              //             launch(course2);
              //           }),
              //     TextSpan(
              //         style: const TextStyle(
              //           color: Colors.blue, fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //           letterSpacing: 1,
              //           fontFamily: 'Poppins',
              //           // letterSpacing: 1,
              //           backgroundColor: Colors.transparent,
              //         ),
              //         text: "3. Python for Data Science, AI & Development\n",
              //         recognizer: TapGestureRecognizer()
              //           ..onTap = () {
              //             final String course3 =
              //                 "https://www.coursera.org/learn/python-for-applied-data-science-ai";
              //             launch(course3);
              //           }),
              //   ])),
              // ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
      );

  // Widget buildCard(String title) => Padding(
  //       padding: const EdgeInsets.all(10),
  //       child: Container(
  //         constraints: const BoxConstraints.tightForFinite(width: 50),
  //         decoration: BoxDecoration(
  //             color: Colors.grey[300],
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.grey.shade600,
  //                 offset: const Offset(4.0, 4.0),
  //                 blurRadius: 15.0,
  //                 spreadRadius: 1.0,
  //               ),
  //               const BoxShadow(
  //                 color: Colors.white,
  //                 offset: Offset(-4.0, -4.0),
  //                 blurRadius: 15.0,
  //                 spreadRadius: 1.0,
  //               )
  //             ],
  //             //border: Border.all(color: Colors.blue, width: 2),
  //             borderRadius: const BorderRadius.all(Radius.circular(10))),
  //         child: Card(
  //           clipBehavior: Clip.antiAlias,
  //           child: Column(
  //             children: <Widget>[
  //               const SizedBox(
  //                 height: 20,
  //               ),
  //               ExpandablePanel(
  //                 theme: const ExpandableThemeData(
  //                   expandIcon: Icons.arrow_downward,
  //                   collapseIcon: Icons.arrow_upward,
  //                   tapBodyToCollapse: true,
  //                   tapBodyToExpand: true,
  //                 ),
  //                 header: Text(
  //                   title,
  //                   style: const TextStyle(
  //                     fontSize: 19,
  //                     fontWeight: FontWeight.bold,
  //                     letterSpacing: 1,
  //                     fontFamily: 'Poppins',
  //                   ),
  //                 ),
  //                 collapsed: Text(
  //                   expanded_text,
  //                   style: const TextStyle(
  //                     fontSize: 16,
  //                     letterSpacing: 1,
  //                     fontFamily: 'Poppins',
  //                   ),
  //                   softWrap: true,
  //                   maxLines: 2,
  //                   overflow: TextOverflow.ellipsis,
  //                 ),
  //                 expanded: Text(
  //                   List.generate(1, (_) => expanded_text).join('\n\n'),
  //                   style: const TextStyle(
  //                     fontSize: 16,
  //                     letterSpacing: 1,
  //                     fontFamily: 'Poppins',
  //                   ),
  //                 ),
  //                 builder: (_, collapsed, expanded) => Padding(
  //                   padding: const EdgeInsets.all(10.0).copyWith(top: 0),
  //                   child: Expandable(
  //                     collapsed: collapsed,
  //                     expanded: expanded,
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     );
  // Widget buildCard2(String title) => Padding(
  //       padding: const EdgeInsets.all(10),
  //       child: Container(
  //         constraints: const BoxConstraints.tightForFinite(width: 50),
  //         decoration: BoxDecoration(
  //             color: Colors.grey[300],
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.grey.shade600,
  //                 offset: const Offset(4.0, 4.0),
  //                 blurRadius: 15.0,
  //                 spreadRadius: 1.0,
  //               ),
  //               const BoxShadow(
  //                 color: Colors.white,
  //                 offset: Offset(-4.0, -4.0),
  //                 blurRadius: 15.0,
  //                 spreadRadius: 1.0,
  //               )
  //             ],
  //             //border: Border.all(color: Colors.blue, width: 2),
  //             borderRadius: const BorderRadius.all(Radius.circular(10))),
  //         child: Card(
  //           child: ExpandablePanel(
  //             theme: const ExpandableThemeData(
  //               expandIcon: Icons.arrow_downward,
  //               collapseIcon: Icons.arrow_upward,
  //               tapBodyToCollapse: true,
  //               tapBodyToExpand: true,
  //             ),
  //             header: Text(
  //               title,
  //               style: const TextStyle(
  //                 fontSize: 19,
  //                 fontWeight: FontWeight.bold,
  //                 letterSpacing: 1,
  //                 fontFamily: 'Poppins',
  //               ),
  //             ),
  //             collapsed: Text(
  //               expanded_text2,
  //               style: const TextStyle(
  //                 fontSize: 16,
  //                 letterSpacing: 1,
  //                 fontFamily: 'Poppins',
  //               ),
  //               softWrap: true,
  //               maxLines: 2,
  //               overflow: TextOverflow.ellipsis,
  //             ),
  //             expanded: Text(
  //               List.generate(1, (_) => expanded_text2).join('\n\n'),
  //               style: const TextStyle(
  //                 fontSize: 16,
  //                 letterSpacing: 1,
  //                 fontFamily: 'Poppins',
  //               ),
  //             ),
  //             builder: (_, collapsed, expanded) => Padding(
  //               padding: const EdgeInsets.all(10.0).copyWith(top: 0),
  //               child: Expandable(
  //                 collapsed: collapsed,
  //                 expanded: expanded,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
}
