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

class CPlusPlusNavPage extends StatefulWidget {
  @override
  _MyCPlusPlusNavPageState createState() => _MyCPlusPlusNavPageState();
}

class _MyCPlusPlusNavPageState extends State<CPlusPlusNavPage> {
  late YoutubePlayerController controller;
  static final expanded_text = '''
#include <iostream>
#include <cmath>
#include<unistd.h>

using namespace std;

int main()
{
    char mathOperation;
    float firstNumber, secondNumber;
    
    cout<<"--- SIMPLE CALCULATOR ---"<<endl;
    cout<<"  Press 1 to ADD"<<endl;
    cout<<"  Press 2 to SUBTRACT "<<endl;
    cout<<"  Press 3 to MULTIPLY "<<endl;
    cout<<"  Press 4 to DIVIDE "<<endl<<endl;
    
    cout << "What operation are you going to use? ";
    cin >> mathOperation;

    cout << "Enter the First Number: ";
    cin >> firstNumber;
    cout << "Enter the Second Number: ";
    cin >> secondNumber;
    cout<<"--------------------------" <<endl;

    switch(mathOperation)
    {
        case '1':
            cout << "Sum = "<<  firstNumber+secondNumber ;
            break;

        case '2':
            cout << "Difference = "<< firstNumber-secondNumber ;
            break;

        case '3':
            cout << "Product = "<< firstNumber*secondNumber ;
            break;

        case '4':
            if(secondNumber != 0.0)
            cout << "Quotient = "<< firstNumber/secondNumber ;
            else
            cout << "Dividing with zero is not possible..";
            break;

        default:
            cout << "Invalid Operation";
            break;
    }
  return 0;
}
''';

  static final expanded_text2 = '''
#include<iostream>
using namespace std;

int main()
{
    char inputCharacter;
    cout << "Enter a Character: ";
    cin >> inputCharacter;

    if((inputCharacter >= 'a' && inputCharacter <= 'z') || (inputCharacter >= 'A' && inputCharacter <= 'Z'))
    {
        cout << inputCharacter << " is an Alphabet";
    }
    else if(inputCharacter >= '0' && inputCharacter <= '9')
    {
        cout << inputCharacter << " is a Digit";
    }
    else
    {
        cout << inputCharacter << " is a Special Character";
    }

    return 0;
}
''';

  static final expanded_text3 = '''
#include <iostream>
using namespace std;
 
int main() {
   double firstNumber, secondNumber, thirdNumber, highestNumber;
   cout<< " FINDING THE HIGHEST NUMBER"<<endl<<endl;
   cout<< " Enter First Number: ";
   cin>> firstNumber;
   cout<< " Enter Second Number: ";
   cin>> secondNumber;
   cout<< " Enter Third Number: ";
   cin>> thirdNumber;
 
  
   if (firstNumber>secondNumber && firstNumber>thirdNumber) {
      highestNumber = firstNumber;
   } else if (secondNumber>thirdNumber) {
      highestNumber = secondNumber;
   } else {
      highestNumber = thirdNumber;
   }
   cout << " Input numbers are: " << firstNumber<<", " << secondNumber<<", " << thirdNumber << endl<<endl;
   cout <<" " <<highestNumber << " is the highest number" << endl;
}
''';
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
            title: const Text(' C++ Programming'),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
          ),
          body: Container(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                Image.asset(
                  'images/Welcome2.jpg',
                  width: 500,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Text('C++ Programming',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'C++ is used to create computer programs, and is one of the most used language in game development.\n\nC++ is a portable language that works equally well on Microsoft Windows, Apple Mac OS, Linux and Unix systems which was developed by Bjarne Stroustrup.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                const Text('The Developer',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                Container(
                  child: Image.network(
                    'https://images.yourstory.com/cs/wordpress/2013/12/bs1.jpg?fm=png&auto=format',
                    width: 150,
                    height: 210,
                    alignment: Alignment.center,
                    // fit: BoxFit.cover,
                  ),
                ),
                Container(
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
                      //border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      '- Bjarne Stroustrup is a Danish computer scientist at Bell Labs in the United States.\n\n- Born on December 30, 1950\n\n- He is a Technical Fellow and Managing Director at Morgan Stanley in New York City and a Visiting Professor at Columbia University.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        //letterSpacing: 1,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 20),
                const Text('Why should you learn C++?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'It is a highly developed programming language in terms of operators, simplicity, and ease of notation. This allows for data abstraction and the use of several programming paradigms:\n- procedural\n- object-oriented\n- generic\n\nIt is characterized by the high performance of the object code, direct access to hardware resources and system functions, ease of creation and use of libraries, independence of any specific hardware or system platform and a small execution environment.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // maximumSize: Size(90, 80),
                      elevation: 10,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 0,
                      ),
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    icon: const Icon(
                      Icons.download,
                      size: 22,
                    ),
                    label: const Text("C++ Installation"),
                    onPressed: () {
                      const cplusplus_install =
                          'https://www.w3schools.in/cplusplus/install/';

                      launch(cplusplus_install);
                    }),
                const SizedBox(height: 50),
                const Text(
                  ' Learn C++ in 1 hour',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    letterSpacing: 1,
                    color: Colors.black,
                    backgroundColor: Colors.transparent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  ' by Programming with Mosh',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    backgroundColor: Colors.transparent,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                player,
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    // maximumSize: Size(90, 80),
                    elevation: 10,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 0,
                    ),
                    textStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                  ),
                  icon: const Icon(
                    Icons.play_arrow_sharp,
                    size: 22,
                  ),
                  label: const Text("Play / Pause"),
                  onPressed: () {
                    //controller.toggleFullScreenMode();
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }
                  },
                ),
                const SizedBox(height: 20),
                const Text(' What is an IDE?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'An IDE, or Integrated Development Environment, enables programmers to consolidate the different aspects of writing a computer program.\n\nIDEs increase programmer productivity by combining common activities of writing software into a single application: editing source code, building executables, and debugging.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 20),
                const Text(' Visual Studio Code',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'Visual Studio Code is a code editor. It is “a free-editor that helps the programmer write code, helps in debugging and corrects the code using the intelli-sense method ”. In normal terms, it facilitates users to write the code in an easy manner.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: .5,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // maximumSize: Size(90, 80),
                      elevation: 10,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 0,
                      ),
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    icon: const Icon(
                      Icons.download,
                      size: 22,
                    ),
                    label: const Text("Download Visual Studio"),
                    onPressed: () {
                      const vscode_install =
                          'https://code.visualstudio.com/Download';

                      launch(vscode_install);
                    }),
                const SizedBox(height: 50),
                const Text('Fundamentals',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Colors.black,
                        letterSpacing: 1,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text(' Variables',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'Variables are containers for storing data values. In C++, there are different types of variables.',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                const Text(' Data Types',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'In C++, variables have different data type. The following are:\n\n- int\n- double or float\n- char\n- string\n- bool',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        letterSpacing: .5,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Text(' INTEGER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'The integer data type is comprised of all the positive and negative whole numbers.\n\nEx.\n  int num = 5;\n  cout<< num;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Text(' DOUBLE or FLOAT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'Double or Float stores floating point numbers, with decimals.\n\nEx.\n  int num2 = 20.8;\n  cout << num2;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Text(' CHARACTER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      ' A char stores single characters. Char values are surrounded by single quotes.\n\nEx.\n  char myLetter = A;\n  cout << myLetter;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Text(' STRING',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'A string is a collection of characters closed within double quotation marks.\n\nEx.\n  string myString = "Hello World!";\n  cout << myString;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Text(' BOOLEAN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'A boolean values is either True or False, just like the value of a conditional expression after it has been evaluated.\n\nEx.\n  bool is_hot = true;\n  cout << is_hot;',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                const Text(' Arithmetic Operators',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'Arithmetic operators are used to perform different mathematical operations.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        //letterSpacing: 1,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      '            NAME               OPERATOR\n           Addition       -        (+)\n      Subtraction       -        (-)\n   Multiplication       -        (*)\n            Division       -        (/)\n           Modulus       -        (%)\n        Increment       -        (++)\n       Decrement       -        (--)',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.5,
                        letterSpacing: 1.5,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                const Text(' Comparison Operators',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'Comparison operators compare two values and indicate the difference between them. They return either a True or False value',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        //letterSpacing: 1,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text('''
            NAME                     OPERATOR
  Equal                           -      (==) 
  Not Equal                     -      (!=)
  Greater Than                -      (>) 
  Less Than                     -      (<)
  Greater Than or Equal   -     (>=)
  Less Than or Equal        -     (<=)
  ''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        fontFamily: 'Poppins',
                        letterSpacing: 1,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                const Text(' Logical Operators',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'Logical operators are used to determine the logic between variables or values.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        //letterSpacing: 1,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      '&& (Logical and) - this operator returns true if both statements are true. \n\n|| (Logical or) - this operator returns true if one of the statements is true.\n\n! (Logical not) - this operator reverse the result, returns false if the result is true.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        fontFamily: 'Poppins',
                        //letterSpacing: 1,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                const Text(' Coditional Statements',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                    )),
                const SizedBox(height: 10),
                Container(
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
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'A conditional statement is a Boolean expression that, if True, executes a piece of code.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        // letterSpacing: 1,
                        color: Colors.black,
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                      'IF statement - this is used to specify a block of code to be executed, if a specified condition is true. \n\nELSE statement - this is used to specify a block of code to be executed, if the same condition is false.\n\nELSE IF statement - This is used to specify a new condition to test, if the first condition is false.\n\nSWITCH CASE - This is used to specify many alternative blocks of code to be executed.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        //letterSpacing: 1,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        backgroundColor: Colors.transparent,
                      )),
                ),
                const SizedBox(height: 15),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // maximumSize: Size(90, 80),
                      elevation: 10,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 0,
                      ),
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    icon: const Icon(
                      Icons.web,
                      size: 22,
                    ),
                    label: const Text("C++ Online Compiler"),
                    onPressed: () {
                      const cplusplus_gdb =
                          'https://www.onlinegdb.com/online_c++_compiler';

                      launch(cplusplus_gdb);
                    }),
                const SizedBox(height: 20),
                const Text('Sample Source Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.bold,
                    )),
                buildCard(' PERMUTATION OF A STRING'),
                buildCard2(
                  ' 2. CHARACTER IDENTIFIER',
                ),
                buildCard3(
                  ' 3. FINDING HIGHEST NUMBER',
                ),
                const SizedBox(height: 20),
                const Text('C++ Online Courses',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                      //border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(30),
                  child: RichText(
                      text: TextSpan(children: [
                    const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                          // letterSpacing: 1,

                          backgroundColor: Colors.transparent,
                        ),
                        text: "Coursera\n"),
                    TextSpan(
                        style: const TextStyle(
                          color: Colors.blue, fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                          // letterSpacing: 1,
                          backgroundColor: Colors.transparent,
                        ),
                        text:
                            "1. Programming in C++: A Hands-on Introduction Specialization\n",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            final String course =
                                "https://www.coursera.org/specializations/hands-on-cpp";
                            launch(course);
                          }),
                    TextSpan(
                        style: const TextStyle(
                          color: Colors.blue, fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                          // letterSpacing: 1,
                          backgroundColor: Colors.transparent,
                        ),
                        text: "2. Object-Oriented Data Structures in C++\n",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            final String course2 =
                                "https://www.coursera.org/learn/cs-fundamentals-1";
                            launch(course2);
                          }),
                    TextSpan(
                        style: const TextStyle(
                          color: Colors.blue, fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontFamily: 'Poppins',
                          // letterSpacing: 1,
                          backgroundColor: Colors.transparent,
                        ),
                        text:
                            "3. C++ Programming for Unreal Game Development Specialization\n",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            final String course3 =
                                "https://www.coursera.org/specializations/cplusplusunrealgamedevelopment";
                            launch(course3);
                          }),
                  ])),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );

  Widget buildCard(String title) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          constraints: const BoxConstraints.tightForFinite(width: 50),
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
              //border: Border.all(color: Colors.blue, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                ExpandablePanel(
                  theme: const ExpandableThemeData(
                    expandIcon: Icons.arrow_downward,
                    collapseIcon: Icons.arrow_upward,
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                  ),
                  header: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  collapsed: Text(
                    expanded_text,
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                      fontFamily: 'Poppins',
                    ),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    List.generate(1, (_) => expanded_text).join('\n\n'),
                    style: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  builder: (_, collapsed, expanded) => Padding(
                    padding: const EdgeInsets.all(10.0).copyWith(top: 0),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildCard2(String title) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          constraints: const BoxConstraints.tightForFinite(width: 50),
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
              //border: Border.all(color: Colors.blue, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Card(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                expandIcon: Icons.arrow_downward,
                collapseIcon: Icons.arrow_upward,
                tapBodyToCollapse: true,
                tapBodyToExpand: true,
              ),
              header: Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
              ),
              collapsed: Text(
                expanded_text2,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              expanded: Text(
                List.generate(1, (_) => expanded_text2).join('\n\n'),
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
              ),
              builder: (_, collapsed, expanded) => Padding(
                padding: const EdgeInsets.all(10.0).copyWith(top: 0),
                child: Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                ),
              ),
            ),
          ),
        ),
      );
  Widget buildCard3(String title) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          constraints: const BoxConstraints.tightForFinite(width: 50),
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
              //border: Border.all(color: Colors.blue, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Card(
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                expandIcon: Icons.arrow_downward,
                collapseIcon: Icons.arrow_upward,
                tapBodyToCollapse: true,
                tapBodyToExpand: true,
              ),
              header: Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
              ),
              collapsed: Text(
                expanded_text3,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              expanded: Text(
                List.generate(1, (_) => expanded_text3).join('\n\n'),
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontFamily: 'Poppins',
                ),
              ),
              builder: (_, collapsed, expanded) => Padding(
                padding: const EdgeInsets.all(10.0).copyWith(top: 0),
                child: Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                ),
              ),
            ),
          ),
        ),
      );
}
