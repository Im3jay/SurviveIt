import 'package:flutter/material.dart';
import 'package:project1/quiz.dart';


class StartQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
              height: 700,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 50),
                    Container(
                      width: 400,
                      height: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(243, 127, 87, 0.9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'First - Aid Quiz',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset('images/quiz_assets/quizStart.png',
                        width: 200, height: 300),
                    const SizedBox(height: 10),
                    const Text(
                      '16 - Questions',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 70, right: 70, bottom: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuizPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(255,99,71,1),
                          padding: const EdgeInsets.only(left: 100,right: 100, top: 15, bottom: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Start',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ]))
        ])));
  }
}