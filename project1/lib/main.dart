import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> { 
  var questionIndex = 0;
  
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
  'What is your favorite color?',
  'What\'s is your favorite animal'
  ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
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
