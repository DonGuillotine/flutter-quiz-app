// Adding '_' to classes, methods and properties make them private and assessable from other files
// ('...') The spread operator spreads out a Dart List in a normal comma separated list of items.
// So ...[a, b, c] is just a, b, c
// The map() method doesn't really return a List but an Iterable, which is a more general type.
// With toList() we can convert this Iterable into a normal List.
// This is often required if we want to call specific List methods on the result.

import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final _questionMaps = [
    {
      'questionText': 'Your favorite song is?',
      'answer': [
        {'text': 'Angry and unromantic', 'score': 1},
        {'text': 'Electronic', 'score': 8},
        {'text': 'Bright and happy', 'score': 10},
        {'text': 'The most popular music', 'score': 9}
      ]
    },
    {
      'questionText': 'What is your favorite sport?',
      'answer': [
        {'text': 'Football', 'score': 8},
        {'text': 'Basketball', 'score': 10},
        {'text': 'Tennis', 'score': 1},
        {'text': 'Sports aren\'t my thing', 'score': 12}
      ]
    },
    {
      'questionText': 'What is your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 12},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answer': [
        {'text': 'Lion', 'score': 8},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Pig', 'score': 12},
        {'text': 'Dog', 'score': 1}
      ]
    },
    {
      'questionText': 'What would be your perfect date would be?',
      'answer': [
        {'text': 'A movie and ice cream. Classic.', 'score': 3},
        {'text': 'Going out on a hike', 'score': 1},
        {'text': 'Trolling in a city cafe', 'score': 12},
        {'text': 'Hanging with your crew', 'score': 8}
      ]
    },
    {
      'questionText': 'What would be your dream vacation be? ',
      'answer': [
        {'text': 'A cruise', 'score': 10},
        {'text': 'Camping', 'score': 8},
        {'text': 'Tokyo', 'score': 1},
        {'text': 'London', 'score': 1}
      ]
    },
  ];

  var _questionsIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _array(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Test'),
        ),
        backgroundColor: Colors.indigo,
        body: _questionsIndex < _questionMaps.length
            ? MainQuiz(
                questionMaps: _questionMaps,
                questionsIndex: _questionsIndex,
                array: _array,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
