import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //Function means that the values stored in this property has to be a function or a pointer at a function

  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
      child: RaisedButton(
        padding: EdgeInsets.all(15),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
