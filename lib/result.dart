import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'Stać Cię na więcej ;)';
    } else if (resultScore <= 5) {
      resultText = 'Dobra robota!';
    } else {
      resultText = 'Mistrzunio!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
            fontSize: 48, fontWeight: FontWeight.bold, color: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
