import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  //  Making variable immutable since if mutated it wont reflect in the UI anyway(by flutter)
  final String questionText;

  Question(this.questionText);

  Widget build(BuildContext context){
    return Container(
        child: Text(
          questionText,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
    );
  }
}