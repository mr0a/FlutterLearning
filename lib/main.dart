import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  var questions = ['What is your favourite color?', 'What is your favourite Animal?'];
  var count = 1;
  @override
  Widget build(BuildContext context) {
    //  MaterialApp sets up the basic things needed to show content in the screen
    return MaterialApp(
      // home(required) is shown when build is called
      home: Scaffold(
        // Scaffold creates clear and good looking white screen background
        appBar: AppBar(
          title: Text('Basic App'),
        ),
        body: Column(
          // Column is used to put multiple widget in a screen
          children: [
            Text(questions[count]),
            Text('Count is $count'),
            RaisedButton(child: Text('I\'m fine'), onPressed: (){
              count++;
              print(count);
            },),
            RaisedButton(child: Text('I\'m not fine'), )
          ],
        ),
      ),
    );
  }
}