import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function quizResett;

  Result(this.finalScore, this.quizResett);

  String get resultPhrase {
    String resultText;
    if (finalScore <= 6) {
      resultText = 'You are Eccentric';
    } else if (finalScore <= 9) {
      resultText = 'You are Wild';
    } else if (finalScore <= 12) {
      resultText = 'You are Agnostic';
    } else {
      resultText = 'You are Pure Evil';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'SourceSansPro-Bold',
            ),
          ),
          FlatButton(
            child: const Text(
              'Reset Quiz',
              style:
                  TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            onPressed: quizResett,
          )
        ],
      ),
    );
  }
}
