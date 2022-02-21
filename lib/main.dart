import 'package:flutter/material.dart'; // it has built-in widgets also has a base class which allows us to create our own widgets

import './question.dart'; //   ./  means look in the same folder as main.dart file

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // setState is a function that forces Flutter to re-render the user interface, however not the retire user interface of the entire app
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //build is also a function/method that needs to RETURN A WIDGET because you work with the widgets in Flutter, the build function is what Dart and Flutter will call in the end when they try to draw something onto the screen
    //just like BuildContext, Widget is in the end a class and every class automatically then also is a type, which is provided by material.dart
    var questions = [
      'Jaki jest\' twój ulubiony kolor?',
      'Jak nazywa sie twój pies?',
      'Jak masz na imię?'
    ];

    return MaterialApp(
      home: Scaffold(
        //home: Text("Hello") - home is a named argument, and as a value to this argument i pass Text which is widget and to this widget i pass so-called positonal argument of "Hello"
        //we need to return widget inside MyFirstApp and there is a special widget which we should return and that is the MaterialApp widget provided by material.dart, it turn your combination of widgets into a real app that can be rendered
        appBar: AppBar(
          title: Text('Moja pierwsza aplikacja'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Odpowiedź 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Odpowiedź 2'),
              onPressed: () => print(
                  'Odpowiedź 2 została wybrana!'), //anonymous function doesn't has a name, it just has argument list and then function body
            ),
            RaisedButton(
              child: Text('Odpowiedź 3'),
              onPressed: () {
                // some stuff
                print('Wybrałeś 3 odpowiedź');
              },
            ),
          ],
        ),
      ),
    );
  } //MaterialApp is a widget that does some base setup to turn your combination of widgets into a real app that can be rendered
}
