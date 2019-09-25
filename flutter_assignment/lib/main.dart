// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './textControl.dart';
import './text.dart';

void main() => runApp(AssignmentApp());

class AssignmentApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AssignmentApp> {
  var word = 'this word';

  void changeText() {
    setState(() {
      word = 'changed to a different one';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment App'),
        ),
        body: Column(
          children: <Widget>[
            SimpleText(word),
            ChangeButton(changeText)
          ],
        ),
      ),
    );
  }
}
