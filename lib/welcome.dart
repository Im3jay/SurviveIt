import 'package:flutter/material.dart';
import 'package:project1/about_page.dart';
import 'package:project1/home_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Color.fromRGBO(255, 252, 185, 1),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/welcomeBg.png"), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Image.asset('images/Logo.png',
                          width: 150, height: 150, fit: BoxFit.cover),
                    ),
                    radius: 90,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'SurviveIt',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Kids',
                          style: TextStyle(
                              color: Color.fromRGBO(249, 156, 35, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                  const SizedBox(height: 50),
                  Container(
                      margin: const EdgeInsets.only(left: 70, right: 70, bottom: 5),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                splashColor: const Color(0xFF80D8FF).withOpacity(0.5),
                                highlightColor:
                                    const Color(0xFF80D8FF).withOpacity(0.3),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyHomePage()));
                                },
                                child: Container(
                                    padding: const EdgeInsets.all(15),
                                    child: const Text('Start Learning!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 138, 0, 1),
                                    )),
                              )))),
                  const SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, bottom: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutUsPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(255, 191, 116, 1),
                        padding: const EdgeInsets.all(13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        'Quiz',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, bottom: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutUsPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(255, 191, 116, 1),
                        padding: const EdgeInsets.all(13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        'About Us',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // Stack(
                  // children: <Widget>[
                  //   Positioned.fill(
                  //     child: Image.asset(
                  //       "images/sceneryBottom.png",
                  //       fit: BoxFit.fitWidth,
                  //       alignment: Alignment.bottomCenter,
                  //     ),
                  //   ),
                  // ]
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}