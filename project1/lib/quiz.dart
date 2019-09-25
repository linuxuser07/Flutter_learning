import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          //accessing the list -> accessing the map value (questionText)
          questions[questionIndex]['questionText'],
        ),
        //acceesing the maps values and leeting map know its a list of strings
        //spreading the list of values intead of nested list ...
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList() //have to send to list because children is a list but needs to be spread
      ],
    );
  }
}
