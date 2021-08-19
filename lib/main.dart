import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // MyAppState state;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Bird', 'score': 3},
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Dog', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite instructor',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 6},
        {'text': 'Max', 'score': 3},
        {'text': 'Max', 'score': 1},
      ]
    }
  ];
  int _questionIndex = 0;
  int _totalscore = 0;
  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('Answer chosen questionIndex:' + _questionIndex.toString());
    } else {
      print('No more questions!');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget wid = new Widget();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Salud Ideal'), centerTitle: true),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion)
          : Result(_totalscore, _resetQuiz),
    ));
  }
}
