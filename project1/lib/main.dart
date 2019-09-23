import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen');
  }
  var questions = [
  'What is your favorite color?',
  'What\'s is your favorite animal'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer1'),
              //reason to pass the function with no parenthesis, is to pass the pointer. 
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print('Something else!'),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () { print('Option 3');},
            ),
          ],
        ),
      ),
    );
  }
}
