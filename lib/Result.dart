import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultText{
    var resultPhrase;
    if (resultScore <= 8 ){
      resultPhrase = 'You are awesome!!!';
    }else if (resultScore <= 12){
      resultPhrase = 'You are good!!!';
    }else resultPhrase = 'You are something different!!!';
    return resultPhrase;
  }
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
