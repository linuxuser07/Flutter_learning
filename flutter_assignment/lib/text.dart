import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  final String someText;

  SimpleText(this.someText);

  @override
  Widget build(BuildContext context) {
    return Text(someText);
  }
}