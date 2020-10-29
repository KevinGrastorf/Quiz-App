import 'package:flutter/material.dart';
import 'package:new_app_2/result.dart';
//Packages first, then routes
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 8},
        {'text': 'Orange', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Black', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Bear', 'score': 8},
        {'text': 'Fox', 'score': 7},
        {'text': 'Bison', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite Star Wars?',
      'answers': [
        {'text': 'A New Hope', 'score': 10},
        {'text': 'The Empire Strikes Back', 'score': 9},
        {'text': 'The Last Jedi', 'score': 7},
        {'text': 'The Phantom Menace', 'score': -20}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
