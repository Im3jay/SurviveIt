import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  var feedbackList = [];
  final feedback = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    return Scaffold(
        appBar: AppBar(
          title: const Text('Help'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255, 191, 116, 1),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
              height: 1800,
              width: double.infinity,
              child: Column(children: <Widget>[
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 224, 178, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    '   Do you need help?                               ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 191, 116, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        '\nLeave us a comment:                                      \n',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        controller: feedback,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Type here',
                        ),
                        maxLines: 5, // <-- SEE HERE
                        minLines: 1, // <-- SEE HERE
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // Background color
                          ),
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => 
                            AlertDialog(
                              title: const Text(
                                'Confirmation',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              content: const Text(
                                  'Do you want to submit your comment?'),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black, // Background color
                                  ),
                                  child: const Text(
                                    'Cancel',
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    feedbackList.add(feedback.text);
                                    Navigator.pop(context, 'OK');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black, // Background color
                                  ),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                          child: const Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 224, 178, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    'Contact us:                                                         \n#09123456789\n\nEmail us on:\nsurviveit.learn@gmail.com\n',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                //for ( var i in feedbackList ) Text(i.toString()) //Hellofor checking
              ]))
        ])));
  }
}
