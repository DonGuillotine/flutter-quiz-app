import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class MainQuiz extends StatelessWidget {
  final List<Map<String, Object>> questionMaps;
  final int questionsIndex;
  final Function array;

  MainQuiz(
      {@required this.questionMaps,
      @required this.questionsIndex,
      @required this.array});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Center(
              child: Question(
                questionMaps[questionsIndex]['questionText'].toString(),
              ),
            ),
            // margin: const EdgeInsets.only(top: 20),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
          ),
          ...(questionMaps[questionsIndex]['answer']
                  as List<Map<String, Object>>)
              .map((answer) {
            return Answers(() => array(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
