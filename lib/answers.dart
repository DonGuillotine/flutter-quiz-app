//  The VoidCallback is called when the button is tapped or otherwise activated.

import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function callback;
  final String myAnswer;

  Answers(this.callback, this.myAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(myAnswer),
        onPressed: callback,
      ),
    );
  }
}
