import 'package:flutter/material.dart';
import 'package:project1/welcome.dart';

class Question {
  String question;
  List<String> answerOptions;
  String correctAnswer;
  String imageName;

  Question(
      {required this.question,
      required this.answerOptions,
      required this.correctAnswer,
      required this.imageName});

  ///body
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  int correct_answers = 0;

  final List<Question> _questionList = [
    Question(
        question: ' Is an instrument that measures temperature. ',
        answerOptions: ['Thermometer', 'Hammer', 'Stethoscope', 'Injection'],
        correctAnswer: 'Thermometer',
        imageName: 'firstAid'),
    Question(
        question:
            'An overflow of water on land that is normally not underwater',
        answerOptions: ['Earthquake', 'Flood', 'Fire', 'Hurricane'],
        correctAnswer: 'Flood',
        imageName: 'Sea'),
    Question(
        question: 'Is an intense shaking of Earth\'s surface',
        answerOptions: ['Earthquake', 'Flood', 'Fire', 'Hurricane'],
        correctAnswer: 'Earthquake',
        imageName: 'Earthquake'),
    Question(
        question: 'The shaking in an earthquake is caused by movements in: ',
        answerOptions: [
          'Earth\'s outermost layer',
          'Earth\'s inermost layer',
          'Earth\'s sea only',
          'Earth\'s atmosphere'
        ],
        correctAnswer: 'Earth\'s outermost layer',
        imageName: 'earthquakes'),
    Question(
        question:
            'It is a cutting instrument having two blades whose cutting edges slide past each other',
        answerOptions: ['Scissors', 'Hammer', 'Nails', 'Injection'],
        correctAnswer: 'Scissors',
        imageName: 'firstAid'),
    Question(
        question:
            'A land form (usually a mountain) where molten rock erupts through the surface of the planet',
        answerOptions: ['Hills', 'Plains', 'Mountain', 'Volcano'],
        correctAnswer: 'Volcano',
        imageName: 'volcano'),
    Question(
        question:
            'It is a small ball of soft material that can be used for a variety of purposes (such as removing makeup or cleaning a wound)',
        answerOptions: ['Dirty sock', 'Earphones', 'Apron', 'Cotton'],
        correctAnswer: 'Cotton',
        imageName: 'firstAid'),
    Question(
        question: 'See a sudden rise or fall of the ocean',
        answerOptions: ['Tsunami', 'Flood', 'Fire', 'Hurricane'],
        correctAnswer: 'Tsunami',
        imageName: 'tsunamis'),
    Question(
        question: 'One thing to do during a Volcano',
        answerOptions: [
          'Duck, Cover and Hold',
          'Get all the food in the Fridge immediately',
          'Panic and run around',
          'Bring animals and livestock to designated evacuation areas'
        ],
        correctAnswer:
            'Bring animals and livestock to designated evacuation areas',
        imageName: 'Pet'),
    Question(
        question: 'What is one sign of a Tsunami incoming?',
        answerOptions: [
          'The ground starts cracking in two',
          'Hear a loud roar from the ocean',
          'Lava falls from the sky',
          'The wind starts blowing fast'
        ],
        correctAnswer: 'Hear a loud roar from the ocean',
        imageName: 'tsunamis'),
    Question(
        question: 'It is something (such as a drug) that relieves pain.',
        answerOptions: [
          'Ointment',
          'Injection',
          'Painkiller',
          'Fever medicine'
        ],
        correctAnswer: 'Painkiller',
        imageName: 'firstAid'),
    Question(
        question: 'What do you do during an earthquake',
        answerOptions: [
          'Run outside immediately',
          'Go to higher grounds',
          'Stand very still in the open',
          'COVER your head with your hands or other objects'
        ],
        correctAnswer: 'COVER your head with your hands or other objects',
        imageName: 'cover'),
    Question(
        question:
            'It is a loosely woven cotton surgical dressing. You use the pin to keep it in place',
        answerOptions: ['Bandaid', 'Gauze', 'Tape', 'Handkerchief'],
        correctAnswer: 'Gauze',
        imageName: 'firstAid'),
    Question(
        question: 'One of the important emergency numbers to save would be',
        answerOptions: [
          'Cafeteria Number',
          'Principal\'s Number',
          'MMDA',
          'Pizza Hut Number'
        ],
        correctAnswer: 'MMDA',
        imageName: 'emergencyCall'),
    Question(
        question: 'NDDMRC means: ',
        answerOptions: [
          'National Disaster Rook Reduction and Management Council',
          'National Disaster Risk Reduction and Management Council',
          'National Disaster Risk Reducing and Management Councilling',
          'National Disaster Risk Reduction and Mean Council'
        ],
        correctAnswer:
            'National Disaster Risk Reduction and Management Council',
        imageName: 'emergencyCall'),
    Question(
        question: 'What to do during an Earthquake',
        answerOptions: [
          'DO NOT GO under a table',
          'DUCK under strong table or other protection',
          'Open all the electronics',
          'Get all the food in the fridge'
        ],
        correctAnswer: 'DUCK under strong table or other protection',
        imageName: 'cover'),
  ];

  void _answerQuestion(String answer) {
    if (_questionList[_currentQuestionIndex].correctAnswer == answer) {
      correct_answers = correct_answers + 1;
    } else {
      // handle incorrect answer
    }

    if (_currentQuestionIndex < _questionList.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Congratulations!'),
            content:
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'images/Logo.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 16),
                Text(
                  'You have completed the quiz. \n You got a total of: $correct_answers correct!',
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> answerOptions =
        _questionList[_currentQuestionIndex].answerOptions;
    answerOptions.shuffle(); // shuffle the answer options

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 224, 178, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              //color: Color.fromRGBO(255, 224, 178, 1),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Text(
                    'Question $_currentQuestionIndex',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Total Score: $correct_answers/16',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "images/quiz_assets/${_questionList[_currentQuestionIndex].imageName}.png",
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    
                      padding:
                          const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Text(
                        _questionList[_currentQuestionIndex].question,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                        ),
                      )),
                      const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: answerOptions.length,
              
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    
                    child: ElevatedButton(
                      
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(width: 3, color: Colors.transparent),
      ),
    ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(13)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(249,238,223,1)),
                      ),
                      onPressed: () => _answerQuestion(answerOptions[index]),
                      child: Text(
                        answerOptions[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
