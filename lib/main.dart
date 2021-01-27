import 'package:counter_app/question.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/Option.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _decrement() => setState(() => {_count--});

  void _increment() => setState(() => _count++);

  var _questions = [
    {
      'question': 'What is your favourite color?',
      'option': ['Black', 'Blue', 'Green', 'White']
    },
    {
      'question': 'What is your favourite animal?',
      'option': ['Tiger', 'Lion', 'Monkey', 'Human']
    },
    {
      'question': 'What is your favourite food?',
      'option': ['Biryani', 'Parotta', 'Dosa', 'Idli']
    }
  ];
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
            Question(_questions[_count]['question']),
            ...(_questions[_count]['option'] as List<String>)
                .map((e) => Option(e, _increment))
                .toList(),
            RaisedButton(
                child: Text('Next'),
                onPressed: _count != _questions.length - 1 ? _increment : null),
            RaisedButton(
                child: Text('Previous'),
                onPressed: _count > 0 ? _decrement : null)
          ],
        ),
      ),
    );
  }
}
