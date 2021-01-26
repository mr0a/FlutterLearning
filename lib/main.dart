import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//  Widget is recreated when data changes while State persists to keep the data

class MyApp extends StatefulWidget{
  //  MyApp is the statefulWidget

  @override //  createState is provided by StatefulWidget
  //  Part 2: Connects this widget with the state and returns the Created State
  State<StatefulWidget> createState() => _MyAppState();
}

//  State is a generic class
//  _ makes the class or variable private (only accessible in the file)
class _MyAppState extends State<MyApp>{  //  Part 1: Connecting State of MyApp with the Widget using pointer in <>
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
            Text(_questions[_count]),
            Text('Count is $_count'),
            //  Changing of state is done in a function and passed to setState function
            RaisedButton(child: Text('Next'), onPressed: () => setState( () => _count++ )),
            RaisedButton(child: Text(_count==0 ? 'Question 1': 'Question 2'), )
          ],
        ),
      ),
    );
  }
}