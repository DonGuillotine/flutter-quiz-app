//  The final modifier entails that the variable won't be changed
//  The Question class returns a text widget to the main.dart file
//  The Question constructor has a questionText as a positional argument
//  The text widget has the questionText as an argument/value

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
