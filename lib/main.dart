import 'package:flutter/material.dart'; // it has built-in widgets also has a base class which allows us to create our own widgets

void main() {
  //main is the function which is automatically executed when the app start in Flutter
  //void main() => runApp(MyApp()); shorthand for functions which only have one and exactly one expression so only one line of code
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //BuildContext is a special object type provided by Flutter in the material.dart file and context object is of that type
    //build is also a function/method that needs to RETURN A WIDGET because you work with the widgets in Flutter, the build function is what Dart and Flutter will call in the end when they try to draw something onto the screen
    //just like BuildContext, Widget is in the end a class and every class automatically then also is a type, which is provided by material.dart
    var questions = [
      'Jaki jest\' twój ulubiony kolor?',
      'Jak nazywa sie twój pies?',
      'Jak masz na imię?'
    ];
    return MaterialApp(
      home: Scaffold(
        //we need to return widget inside MyFirstApp and there is a special widget which we should return and that is the MaterialApp widget provided by material.dart, it turn your combination of widgets into a real app that can be rendered
        appBar: AppBar(
          title: Text('Moja pierwsza aplikacja'),
        ),
        body: Column(
          children: [
            Text('Pytanie!'),
            RaisedButton(
              child: Text('Odpowiedź 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Odpowiedź 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Odpowiedź 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  } //MaterialApp is a widget that does some base setup to turn your combination of widgets into a real app that can be rendered
}
