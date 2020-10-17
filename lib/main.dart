import 'package:flutter/material.dart';
//Packages first, then routes
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Orange', 'Red', 'Black']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Bear', 'Fox', 'Bison']
    },
    {
      'questionText': 'What\'s your favorite Star Wars?',
      'answers': ['A New Hope', 'The Empire Strikes Back', 'The Last Jedi']
    },
  ];
  var answer;
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Course App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
