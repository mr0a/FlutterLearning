import 'package:counter_app/Result.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'question': 'What is your favourite color?',
      'option': [
        {'text': 'Black', 'score': 5},
        {'text': 'Blue', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'question': 'What is your favourite animal?',
      'option': [
        {'text': 'Tiger', 'score': 5},
        {'text': 'Lion', 'score': 4},
        {'text': 'Monkey', 'score': 3},
        {'text': 'Human', 'score': 2}
      ]
    },
    {
      'question': 'What is your favourite food?',
      'option': [
        {'text': 'Biryani', 'score': 5},
        {'text': 'Parotta', 'score': 4},
        {'text': 'Dosa', 'score': 3},
        {'text': 'Idli', 'score': 2}
      ]
    }
  ];
  int _count = 0;
  int _totalScore = 0;

  void _reset(){
    setState( (){
      _count = 0;
      _totalScore = 0;
    });
  }

  void _decrement() => setState(() => _count--);

  void _increment([int score]) {
    setState(() {
      _totalScore += score ??= 0;
      print(_totalScore);
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Basic App'),
          ),
          body: _count < _questions.length
              ? Quiz(
                  quizData: _questions[_count],
                  increment: _increment,
                  decrement: _decrement)
              : Result(_totalScore, _reset)),
    );
  }
}
