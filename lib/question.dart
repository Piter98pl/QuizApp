import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(
      this.questionText); //short form,  this receives some input data because it gets some data in its constructor

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
