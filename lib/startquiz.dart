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
              height: 1800,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 50),
                    Container(
                      width: 400,
                      height: 200,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'First - Aid Quiz',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontSize: 70,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(243, 127, 87, 0.9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset('images/quiz_assets/quizStart.png',
                        width: 300, height: 400),
                    const SizedBox(height: 10),
                    Text(
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
                          primary: Color.fromRGBO(250, 69, 80, 1),
                          padding: const EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Start the Quiz',
                          style: TextStyle(
                            color: Colors.black,
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