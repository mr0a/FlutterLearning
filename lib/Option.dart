import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  final String option;
  Function selectHandler;
  Option(this.option, this.selectHandler);
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: RaisedButton(
          child: Text(option),
          onPressed: selectHandler,
          color: Colors.blue,
          textColor: Colors.white,
        ));
  }
}
