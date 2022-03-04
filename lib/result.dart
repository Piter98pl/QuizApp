import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'Stać Cię na więcej';
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
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Spróbuj jeszcze raz',
            ),
            onPressed: resetHandler,
            textColor: Colors.green,
          )
        ],
      ),
    );
  }
}
