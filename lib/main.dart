import 'package:counter_app/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  var _questions = ['What is your favourite color?', 'What is your favourite Animal?'];
  var _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic App'),
        ),
        body: Column(
          children: [
            Question(_questions[_count]),
            RaisedButton(child: Text('Next'), onPressed: () => setState( () => _count++ )),
            RaisedButton(child: Text(_count==0 ? 'Question 1': 'Question 2'), )
          ],
        ),
      ),
    );
  }
}