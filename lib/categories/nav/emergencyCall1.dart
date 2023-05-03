import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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

class EmergencyCallNavPage extends StatefulWidget {
  @override
  _EmergencyCallNavPageState createState() => _EmergencyCallNavPageState();
}

class _EmergencyCallNavPageState extends State<EmergencyCallNavPage> {

  //late YoutubePlayerController controller;
  @override
  // void initState() {
  //   super.initState();

  //   const url = 'https://www.youtube.com/watch?v=W6NZfCO5SIk';

  //   controller = YoutubePlayerController(
  //     initialVideoId: YoutubePlayer.convertUrlToId(url)!,
  //     flags: const YoutubePlayerFlags(
  //       mute: false,
  //       loop: false,
  //       autoPlay: false,
  //       enableCaption: false,
  //     ),
  //   );
  // }

  // @override
  // void deactivate() {
  //   controller.pause();

  //   super.deactivate();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();

  //   super.dispose();
  // }

  // bool _isPressed = false;
  // void _myCallback() {
  //   setState(() {
  //     _isPressed = true;
  //   });
  // }

  List<String> mainDataList = [
    "NDDMRC",
    "Police Station",
    "Red Cross QC",
    "Hospital",
    "MMDA",
	"Fire Station",
  ];

   List<String> numberList = [
    '0289111496',
	  '09178403925',
    '143',
    '0288630800'
    '136',
    '89288363',
  ];

  static List<String> emergencyCallDataList = [];

  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
      length: 2,
        child: Scaffold(
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
                      
                      InkWell(
                        onTap: () {
                          setState(() {
                             
                             launch('tel:${numberList[index]}');
                          });
                        },
                        child: Ink.image(
                            width: 50,
                            height: 50,
                            image: const AssetImage('images/volcano_img/Telephone.png'),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                );
              },
            ),
            emergencyCallDataList.isEmpty
                ? const Center(
                    child: Text(
                      'There are no favorites yet!',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                : ListView.builder(
                    itemCount: emergencyCallDataList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Row(
                          children: const [
                            SizedBox(width: 10),
                            
                            SizedBox(width: 10),
                          ],
                        ),
                      );
                    },
                  ),
          ],
        ),
          backgroundColor: Colors.white,
        ),
      );
       }

}
