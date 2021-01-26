import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //  MaterialApp sets up the basic things needed to show content in the screen
    return MaterialApp(
      home: Text('Hello Everyone'), // home(required) is shown when build is called
    );
  }
}