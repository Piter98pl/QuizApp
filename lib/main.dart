import 'package:flutter/material.dart'; // it has built-in widgets also has a base class which allows us to create our own widgets

import './quiz.dart'; //   ./  means look in the same folder as main.dart file
import './result.dart';

void main() {
  //main is the function which is automatically executed when the app start in Flutter
  //void main() => runApp(MyApp()); shorthand for functions which only have one and exactly one expression so only one line of code
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //return state object which is connected to a stateful widget
    // TODO: implement createState
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  final _questions = const [
    //list that hold maps
    {
      'questionText':
          'W którym roku Titanic zatonął na Oceanie Atlantyckim 15 kwietnia podczas dziewiczej podróży z Southampton?',
      'answers': [
        {'text': '1912', 'score': 1},
        {'text': '1898', 'score': 0},
        {'text': '1967', 'score': 0},
        {'text': '1985', 'score': 0},
      ],
    },
    {
      'questionText': 'Jaka jest stolica Portugalii?',
      'answers': [
        {'text': 'Braga', 'score': 0},
        {'text': 'Lizbona', 'score': 1},
        {'text': 'Porto', 'score': 0},
        {'text': 'Aveiro', 'score': 0},
      ],
    },
    {
      'questionText': ' Ilu graczy jest w olimpijskiej drużynie do curlingu?',
      'answers': [
        {'text': '4', 'score': 1},
        {'text': '3', 'score': 0},
        {'text': '5', 'score': 0},
      ],
    },
    {
      'questionText': 'Jaki jest najmniejszy ptak na świecie?',
      'answers': [
        {'text': 'Kanarek', 'score': 0},
        {'text': 'Skowronek azjatycki', 'score': 0},
        {'text': 'Wróbelek szlachecki', 'score': 0},
        {'text': 'Koliber pszczół', 'score': 1},
      ],
    },
    {
      'questionText': 'Jaka jest żywotność ważki?',
      'answers': [
        {'text': '12 godzin', 'score': 0},
        {'text': '25 dni', 'score': 0},
        {'text': '24 godziny', 'score': 1},
        {'text': '7 dni', 'score': 0},
        {'text': '10 dni', 'score': 0},
      ],
    },
    {
      'questionText':
          'W którym roku został opracowany produkt WD40 przez chemika Norma Larsena?',
      'answers': [
        {'text': '1953', 'score': 1},
        {'text': '1985', 'score': 0},
        {'text': '1989', 'score': 0},
        {'text': '1999', 'score': 0},
      ],
    },
    {
      'questionText':
          'Gdybyś mógł przetworzyć miliard atomów na sekundę, ile lat zajęłaby teleportacja typowego człowieka?',
      'answers': [
        {'text': '2 miliony lat', 'score': 0},
        {'text': '200 miliardów lat', 'score': 1},
        {'text': '10 lat', 'score': 0},
        {'text': 'miliard lat', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      // setState is a function that forces Flutter to re-render the user interface, however not the retire user interface of the entire app
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Mamy więcej pytań');
    } else {
      print("Nie ma więcej pytań");
    }
  }

  @override
  Widget build(BuildContext context) {
    //build is also a function/method that needs to RETURN A WIDGET because you work with the widgets in Flutter, the build function is what Dart and Flutter will call in the end when they try to draw something onto the screen
    //just like BuildContext, Widget is in the end a class and every class automatically then also is a type, which is provided by material.dart

    return MaterialApp(
      home: Scaffold(
        //home: Text("Hello") - home is a named argument, and as a value to this argument i pass Text which is widget and to this widget i pass so-called positonal argument of "Hello"
        //we need to return widget inside MyFirstApp and there is a special widget which we should return and that is the MaterialApp widget provided by material.dart, it turn your combination of widgets into a real app that can be rendered
        appBar: AppBar(
          title: Text('Moja pierwsza aplikacja'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  } //MaterialApp is a widget that does some base setup to turn your combination of widgets into a real app that can be rendered
}
