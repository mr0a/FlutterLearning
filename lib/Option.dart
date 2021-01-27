import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  String option;
  Option(this.option);
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: RaisedButton(
          child: Text(option),
          onPressed: () => null,
          color: Colors.blue,
          textColor: Colors.white,
        ));
  }
}
