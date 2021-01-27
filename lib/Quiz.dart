import 'package:flutter/material.dart';
import 'package:counter_app/question.dart';
import 'package:counter_app/Option.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> quizData;
  final Function increment;
  final Function decrement;

  Quiz(
      {@required this.quizData,
      @required this.increment,
      @required this.decrement});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(quizData['question']),
        ...(quizData['option'] as List<String>)
            .map((e) => Option(e, increment))
            .toList(),
        RaisedButton(child: Text('Next'), onPressed: increment),
        RaisedButton(child: Text('Previous'), onPressed: decrement)
      ],
    );
  }
}
