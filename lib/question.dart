import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(
      this.questionText); //short form of the constructor,  this receives some input data because it gets some data in its constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
          bottom: 70), //10 device pixels of margin
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: Colors.deepOrangeAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
